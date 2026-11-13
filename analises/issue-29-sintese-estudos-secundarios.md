# Issue 29 — dados dos nove estudos sem avaliação própria concluída

Conferência dos textos integrais dos estudos E01, E02, E03, E09, E10, E11, E12, E16 e E20, com base nos campos H e P da aba `Articles` e nas fontes indicadas na [matriz de auditoria](issue-29-matriz-modelos.md). As páginas indicam a posição no PDF local; os caminhos e a identificação bibliográfica dos PDFs constam na [matriz de datasets](issue-28-matriz-conferencia.md). Os modelos de estudos anteriores são atribuídos às fontes citadas por esses trabalhos, não a experimentos próprios das revisões ou perspectivas. E11 é um protocolo de avaliação ainda sem resultados. As descrições abaixo não modificam as contagens dos 16 estudos com avaliação direta.

## Revisões e perspectivas

### E01 — Fernandes et al.: revisão sistemática

- **Tarefas e abordagens:** diagnóstico a partir de imagens ou dados clínicos, com classificações binárias e multiclasse; modelos clássicos e profundos. A revisão relata SVM como mais utilizado em sua própria amostra, que não corresponde aos 25 estudos do TCC. **PDF pp. 9–13**, Tabela 4.
- **Modelos descritos:** rede siamesa e Inception-v3 em Beesetty (E17); LeprosyNet, AlexNet e ResNet em Baweja (E14); ResNet-50 e VGG-16 em Yotsu (E05); Inception-v4, ResNet-50, regressão elastic-net, XGBoost e Random Forest em Barbieri (E13); SVM otimizada por buraco negro em Steyve (E07). Também menciona E24 e E25. Em E25, o artigo primário identifica o comparador como MobileNet, sem versão; a designação MobileNet-V1 aparece na revisão. A árvore de decisão que a revisão atribui a E07 não resolve a divergência entre a prosa e a Tabela 2 do estudo original. **PDF pp. 9–11**, Tabela 4; **E07, p. 9; E25, pp. 9–10.**
- **Contribuição:** chama atenção para adequação das métricas em classes desbalanceadas e necessidade de validação externa. **PDF pp. 13, 16.**

### E02 — Andrade et al.: revisão sistemática

- **Tarefas e modelos:** relata classificação por CNNs, incluindo ResNet-50 e VGG-16 em Yotsu (E05); rede siamesa com poucos exemplos em Beesetty (E17); SVM e combinações CNN/SVM em outros trabalhos. Em E13, a revisão descreve ResNet-50 e Inception-v4 como combinadas. O original compara essas arquiteturas na Tabela 1 e seleciona ResNet-50 para o modelo de imagens. A Tabela 1 da revisão também registra 396 imagens em E17, onde o original informa 396 lesões, das quais 368 são de hanseníase. **PDF pp. 9–14, 20–21; E13, pp. 5–6; E17, pp. 1 e 6–8.**
- **Contribuição:** discute amostras pequenas, limitações de validação e disponibilidade de código, além de integração futura de dados clínicos/demográficos e seleção de métricas adequadas ao desbalanceamento. **PDF pp. 26–27, 29.**

### E03 — Deps et al.: perspectiva

- **Tarefas e abordagens:** discute reconhecimento de lesões em imagens, uso de informações dos pacientes e apoio à triagem e ao diagnóstico clínico; não apresenta avaliação própria de uma arquitetura específica. **PDF pp. 3–5.**
- **Contribuição:** aborda vieses dos dados, privacidade e supervisão humana. O diagnóstico e as decisões clínicas não são demonstrados como substituídos pela IA no artigo. **PDF pp. 3–4.**

### E09 — Goswami et al.: revisão narrativa

- **Tarefas e modelos citados:** descreve classificação de lesões, incluindo AI4Leprosy de Barbieri (E13), rede siamesa/few-shot de Beesetty (E17) e LeprosyNet de Baweja (E14); também menciona Grad-CAM como técnica de explicação, não como classificador. **PDF pp. 3–4**, Tabela 1.
- **Outros tipos de dados:** cita Random Forest e outros classificadores usados em dados de vigilância para classificação PB/MB e SVM em questionários. Essas aplicações não devem ser apresentadas automaticamente como modelos de visão computacional. **PDF pp. 4–5**, Tabela 2.
- **Contribuição e cautela:** aponta necessidade de diversidade, validação externa e redução de vieses; multimodalidade e aprendizado federado aparecem como possibilidades futuras. E09 descreve os dados de Beesetty como “368 imagens”, mas E17 registra **368 lesões de hanseníase**; usar a unidade do original. **PDF pp. 3–4 e 7; E17, pp. 1 e 6–8.**

### E10 — Prayitno e Triyanto: revisão de saúde digital

- **Modelos e tarefas:** descreve Random Forest em dados de vigilância para classificação PB/MB e SVM, regressão logística, Random Forest e XGBoost em estudo de questionário de suspeita; menciona também o AI4Leprosy (E13), com imagens e informações clínicas em configurações distintas. Nem todas essas tarefas usam imagem. Outros sistemas digitais descritos não devem ser classificados como IA sem evidência. **PDF p. 5**, tabela de estudos.
- **Contribuição:** discute amostras e contextos locais, implantação, aceitação e comparabilidade limitada. A revisão descreve AI4Leprosy como público, enquanto E13 informa acesso sujeito a registro e validação; usar a descrição da fonte original. **PDF pp. 6–8; E13, declaração de acesso.**

### E12 — Ahikpa e Himabindu: revisão de literatura

- **Modelos citados:** regressão logística, XGBoost e Random Forest em Barbieri (E13); ResNet-101, GLCM e Random Forest em Jitendra (E06); vizinho mais próximo em Beesetty (E17); Multi-SVM com LBP/WLD em Banerjee (E25). Também discute Fuzzy C-Means e Firefly em E18 como **segmentação**, não como classificador final. **PDF pp. 2–4**, Tabela I.
- **Contribuição e cautela:** destaca amostras pequenas, falta de padronização e limitações de acesso e de divulgação de métricas; discute multimodalidade e explicabilidade como possibilidades. A Figura 1 de E12 traz 22 registros e cita partições de 182 e 40 pacientes. E13 informa 222 pacientes. A Tabela I associa 73,13% ao vizinho mais próximo de E17. Na Tabela 3 de E17, o valor corresponde à rede siamesa no teste de duas classes com um exemplo por classe. **PDF pp. 3–4; E13, p. 5; E17, p. 9.**

### E16 — Innocent et al.: revisão narrativa estruturada

- **Tarefas e abordagens:** sintetiza trabalhos anteriores de classificação dermatológica com CNN e outras redes profundas e discute mecanismos de atenção e modelos de difusão para mitigação de vieses. Parte dos estudos aborda dermatologia em geral; seus resultados não podem ser atribuídos automaticamente à hanseníase. **PDF pp. 1–2, 4**, Tabela 3.
- **Explicabilidade:** discute mapas de saliência, Grad-CAM, mapas de atenção e escores de confiança. São recursos de explicação ou interpretação; não devem ser contados como arquiteturas de classificação. **PDF pp. 6–7.**
- **Contribuição:** recomenda atenção à representatividade dos tons de pele e à validação externa; reconhece heterogeneidade e natureza predominantemente narrativa da síntese. Salência e confiança, isoladamente, não garantem correção clínica. **PDF pp. 6–9.**

### E20 — Yotsu et al.: perspectiva

- **Abordagens e sistemas:** discute aprendizado de máquina e profundo, modelos de linguagem e IA generativa em termos gerais, sem avaliá-los no artigo. Cita o WHO Skin NTDs App, VisualDx, DermExpert e o estudo piloto de Yotsu (E05); não identifica arquitetura para todos esses sistemas. **PDF pp. 1–2.**
- **Contribuição:** apresenta imagem multiespectral/térmica e dados clínicos como potenciais complementos, não como experimento próprio; discute diversidade geográfica e de fototipos, infraestrutura, privacidade, transparência e confirmação clínica. **PDF pp. 1–2.**

## Protocolo

### E11 — Sall et al.: protocolo de avaliação do aplicativo da OMS

- **Tarefa e sistema planejado:** avaliação do WHO Skin NTDs App beta, com duas CNNs em cascata: um primeiro estágio diferencia 24 condições comuns e o grupo das 12 DTNs; o segundo classifica entre as 12 DTNs. A arquitetura específica dessa versão fica indeterminada. O aplicativo também oferece uma árvore de decisão offline para sintomas, descrita como recurso distinto das CNNs. E15 documenta uma implementação própria com DenseNet-121 e triagem inicial binária. **PDF integral pp. 2–5, Figura 1; E15, p. 6.**
- **Avaliação planejada:** aproximadamente 800 imagens, avaliação de desempenho frente à referência dermatológica e métricas como sensibilidade, especificidade, precisão, F1, AUC e resultados top-k, além de entrevistas sobre viabilidade. Esses elementos são plano do protocolo, não resultados observados. **PDF integral pp. 4–5, 7.**
- **Limitação descrita:** o segundo estágio retorna uma das 12 DTNs, sem opção de não DTN; representatividade e contexto da população devem ser considerados. **PDF integral pp. 4–5, 7.**

## Integração no TCC

A subseção de modelos e abordagens reúne as contribuições desses nove artigos. Os estudos primários sustentam os detalhes de arquitetura e resultados. As revisões E09 e E10 ajudam a identificar aplicações sobre questionários e dados de vigilância. E16 contribui com a discussão de explicabilidade, E03 e E20 com perspectivas para aplicação clínica e E11 com o desenho da avaliação prospectiva. As contagens usam as publicações com avaliação direta.
