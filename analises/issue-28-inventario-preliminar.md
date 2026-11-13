# Issue 28 — inventário preliminar e alterações propostas

Data: 13/11/2026. Escopo: cinco análises individuais fornecidas pelo usuário (E04, E05, E07, E13 e E22), com E21 referenciado na análise de E22; resultados anteriores do Evidentia e NotebookLM e texto atual do TCC. Este arquivo consolida análises recebidas: as citações de páginas abaixo foram fornecidas nelas e não foram verificadas novamente nos PDFs nesta consolidação. Não é o inventário completo dos 25 estudos. NI = não informado segundo a análise; NL = não localizado; pendente = precisa de confirmação.

## Tabela de trabalho: dataset por estudo

| Estudo | Dataset e origem | Uso e população | Imagens | Pacientes / lesões | Demografia, pele e acesso | Fonte indicada nas análises e pendências |
|---|---|---|---|---|---|---|
| E04 Deps 2026 | Conjunto externo sem nome próprio; curadoria/acordo UFES–OMS. País de coleta não explicitado na análise recebida. | Teste externo do app; hanseníase, lesões clássicas e reacionais/atípicas. | 439 iniciais; 16 excluídas; 423 analisadas (367 + 56); 418 com metadados. | 208 casos no conjunto inicial; número de casos únicos após exclusões NI; lesões únicas NI. | Idade, sexo e Fitzpatrick por imagem, não por paciente; acesso mediante solicitação ao autor. | Artigo pp. 1, 3–4, Tabela 1; conferir país de coleta e correspondência entre 208 casos e 423 imagens. |
| E05 Yotsu 2023 | Coleção própria sem nome específico; Costa do Marfim e Gana. | Treino/teste interno; cinco doenças: Buruli, hanseníase, micetoma, escabiose e bouba. | 1.709; 131 de hanseníase. | 506 pacientes; 38 com hanseníase; lesões únicas NI. | Idade e sexo coletados, distribuição NI; autores descrevem Fitzpatrick IV ou superior sem distribuição; acesso institucional controlado. | Artigo pp. 1, 3–5, Tabela 1; conferir inconsistência na Task 2 e origem do número 1.569, sem supor explicação. |
| E07 Steyve 2022 | Coleção própria sem nome; Camarões, colaboração de profissionais rurais em Akonolinga. | Classificação de hanseníase, úlcera de Buruli e leishmaniose cutânea. | 1.054 = 372 + 420 + 262. | Pacientes e lesões distintas NI. | Demografia e tom de pele NI; imagens mediante solicitação, características extraídas e código em repositório público. | Artigo p. 4, seção 2.1/Fig. 5 e p. 10, Tabela 4; CSV anterior traz 1.042, incompatível com a soma das categorias. |
| E13 Barbieri 2022 | AI4Leprosy; Fiocruz, Rio de Janeiro, Brasil. | Desenvolvimento e teste interno de modelos; pessoas com lesões suspeitas e outras dermatoses. | Resultados: 1.226; resumo: 1.229. | 222 pacientes finais: 182 desenvolvimento e 40 teste; resultados: 582 lesões; resumo: 585 conjuntos de metadados. | Fototipo e distribuição demográfica não localizados no texto principal; artigo descreve acesso por cadastro/validação, a confirmar no repositório. | Artigo pp. 1, 3–5 e 8, Fig. 1; diferenças 1.226/1.229 e 582/585 não resolvidas; consultar suplemento e Dataverse DOI 10.35078/1PSIEL. |
| E21 Sanchez 2024 | Co2Wounds-V2; Colômbia, segundo notas de E21 citadas na análise de E22. | Dataset de feridas crônicas associadas à hanseníase; criação e benchmark. | 764 reportadas; notas apontam também 746 na descrição de curadoria. | 96 pacientes; número de feridas únicas pendente. | Verificar diretamente demografia, acesso, licença e centro de coleta em E21 e repositório. | Fonte indireta: notas de E21 citadas na análise de E22; conferir artigo original antes de concluir como 746 e 764 se relacionam. |
| E22 Mehta 2026 | Co2Wounds-V2; origem colombiana atribuível a E21, não explicitada em E22 segundo análise recebida. | Desenvolvimento e avaliação de framework para feridas crônicas de pacientes com hanseníase. | 764: 485 treino, 122 validação, 157 teste. | 96 pacientes; número de feridas únicas NI. | 78 homens e 18 mulheres; idade média 75,5 ± 9,9 anos; fototipo NI; artigo aponta Mendeley como acesso aberto. | Artigo pp. 2, 3, 7–8 e Tabela 1; teste descrito sem rótulos mas métricas relatadas; licença e divisão por paciente não confirmadas. Não somar novamente E21 e E22. |

## Mudanças propostas no TCC

Arquivo principal: `TCC/TCC1 formatado/editaveis/revisao_sistematica.tex`.

1. Na subseção RQ2 (em torno da linha 650), substituir a organização exclusivamente regional por inventário por estudo e dataset, com origem, amostra, acesso e referência. A tabela acima cobre somente os estudos analisados; completar os demais antes de afirmar cobertura dos 25.
2. E04 (linhas próximas de 670, 764 e 1145): separar 439 imagens iniciais/208 casos de 423 imagens analisadas, sem afirmar 208 casos remanescentes. Relatar UFES–OMS como vínculo institucional e não concluir o país de todas as coletas sem confirmação. Preservar que os fototipos são por imagem; a subseção de tons de pele já registra fototipos e não deve ser reescrita como ausência desses dados.
3. E13: manter 1.226 como contagem atribuída aos resultados, registrando 1.229 no resumo e a diferença 582/585 sem inferir causa. Trocar a afirmação incondicional de base pública por acesso descrito no artigo, sujeito à verificação no repositório; distinguir descrição do artigo de condição atual.
4. E21/E22: identificar dataset reutilizado, sem somar suas amostras; atribuir origem e características ao estudo que as documenta. Registrar 764 versus 746 como pendência de E21, sem inventar explicação. Na seção de avaliação, preservar a ressalva já existente sobre teste descrito sem rótulos e métricas reportadas.
5. E05/E07: manter 1.709/506 e 1.054 imagens como informações identificadas nas análises, e acrescentar composição por condição quando útil; não transformar número de imagens em pacientes. A diferença 1.569/1.709 não foi explicada pela documentação recebida.
6. Revisar “superior a 89.000 imagens”: conferir origem e unidade dos componentes, versões, recortes e reutilizações antes de apresentar total de imagens únicas. O conjunto da OMS inclui imagens que não são de pele.
7. Após inventariar todos os estudos, conferir se sínteses sobre demografia e tom de pele continuam coerentes; verificar separadamente outras seções que repetem as contagens de E04.

## Artefatos sugeridos

- Tabela de inventário completa, em apêndice ou material suplementar: uma linha por estudo e dataset, com localização da evidência e indicação de incerteza. Na seção RQ2, usar tabela resumida para leitura.
- Matriz de reutilização estudo × dataset: diferencia uso direto, citação e ausência de base própria; evita contagem dupla de E21/E22.
- Registro de divergências: valor, unidade, artigo/página, conflito e decisão ou pendência; incluir 764/746, 1.226/1.229 e 1.569/1.709.
- Quadro de disponibilidade e limitações por base: acesso, documentação, demografia e unidade de partição, apenas após conferência. Gráficos por país ou totais dependem da conclusão do levantamento e não devem sugerir pacientes ou imagens únicos sem evidência.

## Próximos passos

Confrontar as páginas indicadas com os PDFs originais, completar os demais estudos, conferir os repositórios quando necessário e então atualizar texto, tabelas e slides. Uma análise isolada ou um resultado do NotebookLM não substitui a verificação da fonte primária. Não houve alteração do TCC nesta etapa.
