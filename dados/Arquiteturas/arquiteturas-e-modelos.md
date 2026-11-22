# Arquiteturas propostas e comparação de modelos

Registro das decisões e opções discutidas em 21/11/2026 para o estudo de triagem de hanseníase com o 32 CSD v2. Os itens marcados como "em discussão" ainda dependem dos orientadores (prof. Hilmer e prof. Vinicius).

## 1. As três arquiteturas

| # | Arquitetura | Papel | Onde roda | Segmentação | Destilação |
|---|---|---|---|---|---|
| 1 | Estudo do TCC escrito (Capítulo 4) | Base já planejada | Computador | Não | Não |
| 2 | Pipeline mobile com segmentação e destilação | Proposta principal para o celular | Treino no computador, uso no celular (offline) | Sim (EdgeSAM com toque) | Sim |
| 3 | Pipeline mobile com destilação, sem segmentação | Contingência, se a segmentação der problema | Treino no computador, uso no celular (offline) | Não (foto inteira e enquadramento guiado) | Sim |

As três usam o mesmo 32 CSD curado, as mesmas partições por grupos e o mesmo teste reservado, de modo que os resultados podem ser comparados entre si.

### Arquitetura 1: estudo do TCC escrito

- Fonte: Capítulo 4 na branch `feature/cap4-ciencia-de-dados` (PR #27).
- ResNet-50 e MobileNetV2 treinadas por transferência (pesos ImageNet, 224×224), sem aumento de dados na configuração principal.
- Validação cruzada estratificada por grupos em 5 dobras, busca em grade com 18 configurações iguais para as duas redes, seleção pela AUC média.
- Retreino com 3 sementes; limiar por Youden e ponto secundário com sensibilidade ≥ 0,90.
- Linhas de base: classificador trivial e regressão logística com metadados do arquivo.
- Medidas: acurácia balanceada (principal), sensibilidade, especificidade, AUC, calibração (Brier e ECE), IC 95% por bootstrap de grupos (2.000), diferença pareada como tamanho de efeito.

### Arquitetura 2: mobile com segmentação e destilação

```
TREINO (computador)
 32 CSD → curadoria → partições por grupos
        → ponto de toque → EdgeSAM → recorte da lesão (224×224)  [+ versão foto inteira para a ablação]
        → professor ──escores──┐
        → alunos ◄─────────────┘  (rótulo real + escores do professor)
        → limiar, calibração e abstenção → int8 → ONNX
        → teste reservado

USO (celular, offline)
 foto → controle de qualidade → toque na lesão → EdgeSAM → recorte → aluno int8
      → encaminhar / não encaminhar / incerto
```

- Perda do aluno: `L = α · BCE(y, σ(z_s)) + (1 − α) · T² · BCE(σ(z_t/T), σ(z_s/T))`, com T e α na busca em grade.
- O professor nunca vê a partição de limiar nem o teste.
- Página com os diagramas: https://claude.ai/artifact/HfyNZXb1NzhQdVMCSFb3TN

### Arquitetura 3: mobile com destilação, sem segmentação (contingência)

```
TREINO (computador)
 32 CSD → curadoria → partições por grupos
        → foto inteira (224×224 com preenchimento de bordas, normalizada)
        → professor ──escores──┐
        → alunos ◄─────────────┘
        → limiar, calibração e abstenção → int8 → ONNX/TFLite
        → teste reservado + Grad-CAM numa amostra

USO (celular, offline)
 câmera com moldura de enquadramento → controle de qualidade → aluno int8
      → encaminhar / não encaminhar / incerto
```

- Custo no celular cai de cerca de 22,4 para cerca de 0,3 GFLOPs por foto (com MobileNetV2), porque sai o EdgeSAM. Estimativa.
- Riscos e controles: atalhos de fonte (linha de base com metadados, resolução fixa, erros por fonte, Grad-CAM); lesão pequena na foto (enquadramento guiado no app); várias lesões (controle de qualidade e abstenção).
- Variante barata para a ablação: recorte central da foto.

Critérios propostos para acionar a arquitetura 3 (a definir):
- a segmentação falha em proporção alta das imagens, ou falha muito mais em uma classe que na outra;
- a latência do EdgeSAM no celular fica acima do aceitável para triagem foto a foto;
- a ablação mostra que o recorte não melhora a classificação;
- falta tempo para anotar os pontos de toque e inspecionar as máscaras.

## 2. Turma de alunos (modelos leves, para o celular)

Cada aluno é treinado em duas versões, **com professor (destilado)** e **sem professor**, com a mesma grade, as mesmas dobras e as mesmas sementes. A diferença pareada entre as duas versões mede o efeito da destilação em cada família.

| Aluno | Variante sugerida | Parâmetros | GFLOPs (224) | Observação |
|---|---|---|---|---|
| MobileNetV2 | 1.0 | 3,5 M | 0,30 | Precedente em celular (Jaikishore 2021); já está no plano. TorchVision |
| MobileNetV3 | **Large** (sugerida); Small como opção para aparelhos muito simples | Large 5,4 M; Small 2,5 M | Large 0,22; Small 0,06 | Large: 44 ms int8 no Pixel 1. Small é rápida, mas tende a perder desempenho em tarefa difícil. TorchVision |
| MobileNetV4 | **Conv-S** (sugerida, custo próximo da V2) ou Conv-M (mais forte) | Conv-S 3,8 M; Conv-M 9,2 M | Conv-S 0,2; Conv-M 1,0 (MACs) | Preferir variantes Conv às Hybrid: as Hybrid têm atenção e costumam perder mais na quantização int8. Não está no TorchVision; pesos ImageNet no `timm`. Números do artigo de Qin et al. (2024), a confirmar |

Total: 3 famílias × 2 versões = 6 alunos.

## 3. Candidatos a professor (em discussão)

| Candidato | Parâmetros | GFLOPs | Entrada | Observação |
|---|---|---|---|---|
| DINOv3 (ViT-S/16 ou ViT-B/16, com cabeça linear) | ViT-S cerca de 21 M; ViT-B cerca de 86 M | ViT-S cerca de 4–5 (estimativa) | 224 | Autossupervisionado, atributos fortes; diversidade em relação às CNNs. Conferir a licença dos pesos |
| ResNet-50 | 25,6 M | 4,09 | 224 | Já está no plano (Arquitetura 1); usada no AI4Leprosy |
| DenseNet-121 | 8,0 M | 2,83 | 224 | Arquitetura citada para o app da OMS (Pons 2026) |
| ResNet-101 | 44,5 M | 7,8 | 224 | Usada em 3 dos 17 estudos (E06, E21, E25) |
| Inception V3 | 27,2 M | 5,71 | 299 | Usada em 3 dos 17 estudos (E17, E24, E26) |
| Inception V4 | cerca de 42,7 M | cerca de 12 (a confirmar) | 299 | Não está no TorchVision; pesos no `timm` |

Fontes dos números: documentação do TorchVision e artigos originais; os marcados como estimativa ou "a confirmar" precisam ser checados antes de entrar no texto.

Critérios sugeridos para escolher o professor:
1. AUC média na validação cruzada (o professor precisa ser melhor que os alunos).
2. Diversidade: comparar ao menos um professor CNN (ResNet-50 ou DenseNet-121) com o DINOv3.
3. Custo de treino no equipamento disponível.
4. Presença na literatura revisada, para justificar a escolha.

Para conter o custo, a sugestão é selecionar **um ou dois professores** pela validação cruzada e destilar todos os alunos a partir deles, em vez de cruzar os seis professores com os seis alunos.

## 4. Desenho das comparações

| Comparação | Pergunta |
|---|---|
| Aluno com professor × mesmo aluno sem professor | A destilação melhora o modelo leve? (por família) |
| Alunos entre si (V2, V3, V4) | Qual família tem o melhor equilíbrio entre desempenho e custo no celular? |
| Aluno destilado × professor | Quanto do desempenho do modelo grande o aluno recupera? |
| Aluno fp32 × aluno int8 | Quanto se perde na quantização? |
| Arquitetura 2 × Arquitetura 3 (recorte × foto inteira) | A segmentação ajuda a classificar? |

Todas no mesmo teste reservado, pela diferença pareada da acurácia balanceada com IC 95% por bootstrap de grupos. No celular: paridade, latência, memória, tamanho, bateria, modo avião e recaptura (fotos do teste refotografadas com o celular).

## 5. Uso do dataset (igual nas três arquiteturas)

- 32 CSD v2: 5.034 imagens, 32 categorias; 3 de hanseníase (672 imagens); 29 negativas (28 doenças e pele normal). Dermatoscopia sai da análise principal.
- Partições por grupos de fotos relacionadas, estratificadas pela categoria original: teste reservado (20–25%), validação cruzada em 5 dobras e partição de limiar.
- Professor e alunos usam as mesmas dobras; só os alunos usam a partição de limiar; o teste é aberto uma vez.
- Análises extras: especificidade por doença e análise secundária sem pele normal.
- CO2Wounds-V2 fica fora do classificador (só feridas de pacientes com hanseníase, sem classe negativa).

## 6. Decisões pendentes

- [ ] Escolher o(s) professor(es) entre DINOv3, ResNet-50, DenseNet-121, ResNet-101, Inception V3 e Inception V4
- [ ] Confirmar MobileNetV3 Large ou Small
- [ ] Confirmar MobileNetV4 Conv-S ou Conv-M
- [ ] Definir a grade de T e α da destilação
- [ ] Definir o prompt da segmentação na Arquitetura 2 (toque ou automático)
- [ ] Definir os critérios para acionar a Arquitetura 3
- [ ] Validar com o prof. Vinicius o aumento de dados e o hardware
- [ ] Levar as três arquiteturas ao prof. Hilmer antes de alterar o Capítulo 4

## 7. Materiais

- Deck da Arquitetura 1: https://claude.ai/artifact/Xg6z5vRRQtuaWQePsCmoSN
- Deck da Arquitetura 2: https://claude.ai/artifact/5PGj5obGe771CBquRKmRhG
- Página do pipeline com destilação: https://claude.ai/artifact/HfyNZXb1NzhQdVMCSFb3TN
- Issue da reunião de 21/11: https://github.com/HansenSightAI/tcc/issues/26
- PR do Capítulo 4: https://github.com/HansenSightAI/tcc/pull/27
