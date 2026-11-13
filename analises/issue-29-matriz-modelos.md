# Issue 29 — auditoria de tarefas, abordagens e modelos

A conferência cruza a aba `Articles` do arquivo [data_extraction (2).ods](<../data_extraction (2).ods>), a matriz anterior e os PDFs originais. Os 25 títulos normalizados da planilha coincidem com a tabela de estudos incluídos do TCC. As referências a células são dessa aba. F indica tipo de estudo, H indica técnica de visão computacional e P indica modelo ou abordagem. As páginas são posições físicas no PDF. Os caminhos dos originais constam na [matriz de datasets](issue-28-matriz-conferencia.md). Para E11, foi usado o artigo integral da pasta 5682.

Dos 25 estudos incluídos, 15 desenvolveram e avaliaram modelos, e E04 avaliou um modelo existente. Os outros nove são revisões, perspectivas ou um protocolo. A unidade de frequência é a publicação com uso direto de cada modelo ou componente. Comparadores testados, modelos intermediários e componentes usados em uma configuração avaliada entram na contagem. Um componente pode constar junto do sistema que o incorpora. Variantes agrupadas estão indicadas no rótulo ou na decisão. Descritores, métodos de otimização, explicabilidade, aquisição, operações fixas de pré-processamento e agrupamento usado para formar classes de treino ficam documentados como técnicas. A [síntese dos nove estudos](issue-29-sintese-estudos-secundarios.md) detalha as contribuições sem resultados experimentais próprios.

## Conciliação por estudo

| Estudo e células | Registro da planilha e da matriz anterior | Decisão sustentada pelo PDF original |
|---|---|---|
| E01 · F2, H2, P2 | A planilha lista CNNs e classificadores tradicionais. A matriz os atribui à literatura revisada. | Revisão sistemática de aplicações com imagens e outras entradas. A Tabela 4 extrai métodos e resultados de terceiros, e a p. 13 descreve SVM como mais usado na amostra da própria revisão. Nenhuma ocorrência experimental de E01. **pp. 2–4, 8–13, Tabela 4.** |
| E02 · F3, H3, P3 | Ambas distinguem a revisão de experimentos próprios. A planilha menciona CNNs, SVM, agrupamento e dados multimodais. | As Tabelas 1 e 4 sintetizam estudos anteriores. E02 descreve ResNet-50 e Inception-v4 como combinadas em E13, cuja Tabela 1 documenta arquiteturas comparadas. E02 também trata 396 lesões de E17 como imagens. Nenhuma ocorrência experimental de E02. **pp. 9–10, 20, 25–26, Tabelas 1 e 4.** |
| E03 · F4, H4, P4 | Ambas identificam perspectiva sem arquitetura testada. A planilha cita teleconsultas, triagem e monitoramento. | A perspectiva discute análise de imagens, apoio clínico e telessaúde, além de vieses e privacidade. Os exemplos ilustram aplicações potenciais. Nenhuma ocorrência experimental. **pp. 3–5, discussão de aplicações e desafios.** |
| E04 · F5, H5, P5 | Ambas identificam a CNN do segundo estágio da versão beta. O inventário omitia a ocorrência. | Incluir o classificador convolucional pré-treinado de segundo estágio, cuja arquitetura específica fica indeterminada. Os autores informam que todas as análises abrangem exclusivamente esse classificador. A descrição do primeiro estágio e a DenseNet-121 de E15 não autorizam identificar a arquitetura avaliada em E04. **pp. 2 e 4, métodos e resultados.** |
| E05 · H6, P6 | Ambas registram ResNet-50 e VGG-16. H6 acrescenta Grad-CAM. | Os métodos descrevem redes pré-treinadas em ImageNet com classificação de cinco doenças. As Tabelas 2–3 comparam ambas. O artigo analisa erros, sem aplicação de Grad-CAM identificada. **pp. 4–7, métodos, Tabelas 2–3 e Figura 2.** |
| E06 · H7, P7 | A planilha associa U-Net, LBP/GLCM e classificação por CNN. A matriz identifica ResNet-101 e os classificadores da Tabela 5. | U-Net segmenta a ROI. ResNet-101 extrai atributos combinados com GLCM. A Tabela 5 avalia Random Forest, Naive Bayes, k-NN, SVM, árvore de decisão e ANN com GLCM e com os atributos combinados. A menção a ResNet-50 na p. 3 diverge da implementação e dos resultados. A configuração documentada sustenta ResNet-101 e GLCM. **pp. 1, 3, 6–12, Figura 1 e Tabela 5.** |
| E07 · H8, P8 | A planilha inclui detecção/segmentação no fluxo e registra a divergência sobre árvore. A síntese anterior só listava classificação. | Limiarização de Otsu e morfologia delimitam a ROI como etapa do sistema. A avaliação quantitativa documentada é de classificação de três doenças, com BHO-SVM, SVM, k-NN e ANN. A seção 5.3 menciona árvore de decisão, ausente na Tabela 2. A árvore fica como atribuição inconclusiva, fora da frequência. A Tabela 3 é uma comparação com a literatura. **pp. 4–5, 7, 9–10, Tabela 2 e conclusão.** |
| E08 · H9, P9 | A planilha atribui XGBoost e descreve a ANN como multicamada. A matriz lista os cinco modelos da Tabela 3. | Classificação binária de microfotografias histopatológicas com ANN de arquitetura não especificada, árvore de decisão, SVM, regressão logística e Random Forest. A lista dos cinco modelos treinados e a Tabela 3 sustentam essas ocorrências. **pp. 2–4, métodos e Tabela 3.** |
| E09 · F10, H10, P10 | Ambas identificam síntese de trabalhos anteriores, incluindo E13, E14 e E17. | A Tabela 1 resume estudos com imagens e a Tabela 2 inclui aplicações em vigilância e questionários. A revisão chama 368 lesões de hanseníase de E17 de imagens. Integração multimodal e aprendizado federado aparecem também como perspectivas. Nenhuma ocorrência experimental de E09. **pp. 3–5 e 7, Tabelas 1–2.** |
| E10 · F11, H11, P11 | A planilha distingue IA com imagens, questionários, dados de vigilância e ferramentas digitais. A matriz marca revisão sem avaliação própria. | A síntese identifica AI4Leprosy em E13, Random Forest em dados de vigilância e SVM, regressão logística, Random Forest e XGBoost em questionário. As aplicações digitais de gestão são descritas pelo papel que desempenham. Nenhuma ocorrência experimental de E10. **pp. 2–5, seleção e tabela de estudos.** |
| E11 · F12, H12, P12 | Ambas registram o protocolo do app beta. A planilha identifica os dois classificadores e a árvore de decisão offline. | O primeiro estágio distingue 24 condições comuns e um grupo de 12 DTNs cutâneas. O segundo diferencia as 12 DTNs. O protocolo descreve duas CNNs sem arquitetura específica e apresenta a árvore offline como outro recurso do aplicativo. A avaliação prospectiva é planejada, sem resultados publicados nesse artigo. Nenhuma ocorrência experimental de E11. **pp. 2–5 e 7, Figura 1 e métodos do artigo integral.** |
| E12 · F13, H13, P13 | F13 identifica revisão, mas H13/P13 listam técnicas e modelos sem atribuição explícita. A matriz os vincula aos artigos citados. | A revisão resume métodos anteriores. A Figura 1 traz 22 registros onde E13 informa 222 pacientes. A Tabela I vincula 73,13% ao vizinho mais próximo, mas a Tabela 3 de E17 atribui o valor à rede siamesa. Nenhuma ocorrência experimental de E12. **pp. 1–4, Figura 1 e Tabela I.** |
| E13 · H14, P14 | Ambas registram os três modelos em dois níveis do AI4Leprosy, com as saídas dos modelos de imagem e lesão e os dados do paciente. | O modelo 1 compara ResNet-50 e Inception-v4 e seleciona ResNet-50 ajustada com fotos de perto. Os modelos 2 e 3 avaliam regressão logística elastic-net, XGBoost e Random Forest. O nível do paciente testa combinações com e sem imagem. A regressão final descrita usa a saída do modelo 2, de características clínicas da lesão, e informações do paciente. **pp. 4–6 e 8, Figura 1 e Tabelas 1–3.** |
| E14 · H15, P15 | Ambas registram LeprosyNet, AlexNet e ResNet e distinguem os recursos de explicação. | A LeprosyNet de quatro camadas convolucionais é comparada a AlexNet e ResNet de versão não especificada para classificação binária. Visualização de ativações, oclusão e Grad-CAM são métodos de explicabilidade. **pp. 2–5, Figuras 4–7 e Tabela 1.** |
| E15 · H16, P16 | Ambas identificam DenseNet-121 no classificador da OMS. | Os métodos descrevem DenseNet-121 com triagem binária de DTN cutânea e, no segundo estágio, classificação entre 12 DTNs. A arquitetura é atribuída à implementação descrita por E15. **pp. 6–7, seção Model architecture e Figura 4.** |
| E16 · F17, H17, P17 | A planilha lista CNNs e explicabilidade. A matriz classifica o artigo como revisão narrativa estruturada. | A Tabela 3 reúne trabalhos de dermatologia e DTNs. Grad-CAM, mapas de saliência, mapas de atenção e escores de confiança aparecem na discussão da literatura. Nenhuma ocorrência experimental de E16. **pp. 1–4 e 6–7, métodos, Tabela 3 e discussão.** |
| E17 · H18, P18 | Ambas identificam a rede siamesa e os comparadores. H18 também registra o agrupamento de Ward, omitido na síntese anterior. | A coleta usou câmera, polarização e smartphone. O agrupamento aglomerativo de Ward sobre características morfológicas formou subclasses da hanseníase para treino e teste. A rede siamesa aprende com pares de imagens; os métodos não demonstram fusão das modalidades de captura como entrada do modelo. Os comparadores usam o vizinho mais próximo sobre pixels ou sobre embeddings do Inception V3 pré-treinado. **pp. 4–5 e 7–10, Figura 5 e Tabelas 2–4.** |
| E18 · H19, P19 | A planilha menciona Firefly/PSO e classificação por CNN. A matriz identifica Firefly, AlexNet, GLCM e Random Forest. | Incluir Fuzzy C-Means com Firefly como agrupamento que delimita a ROI. O pipeline extrai atributos com AlexNet e GLCM e aplica Random Forest, inclusive na comparação entre tipos de atributos. As etapas propostas documentam Firefly como otimizador. **pp. 5–8, 10–14, etapas 2–4 e Tabela 6.** |
| E19 · H20, P20 | A planilha cita VGG-16 e MobileNetV2. A matriz registra quatro CNNs com MobileNet v1. | As Tabelas I–II e a seção de resultados sustentam VGG-16, MobileNet v1, Xception v1 e EfficientNet-B0. Métodos descrevem camadas densas com saída linear e *hinge loss*, enquanto a conclusão menciona SVM. Registrar SVM como inconclusiva, fora da frequência e da classificação de abordagens de E19. **pp. 3–6, métodos, Tabelas I–II e conclusão.** |
| E20 · F21, H21, P21 | A planilha menciona CNNs móveis, integração multimodal e teledermatologia. A matriz registra uma perspectiva. | Discute aplicativos, triagem assistida e requisitos clínicos. Dados clínicos e imagens multiespectrais ou térmicas são possibilidades discutidas. Nenhuma ocorrência experimental de E20. **pp. 1–3, discussão de oportunidades e desafios.** |
| E21 · H22, P22 | A planilha atribui classificação de tecidos, SegNet e FCN. A matriz registra benchmark com DeepLabV3, DeepLabV3+, U-Net, FPN e quatro encoders. | A tarefa é segmentar ferida e fundo com máscaras binárias. A Tabela 1 sustenta os quatro segmentadores e lista ResNeXt-50, ResNet-101, EfficientNet e SegFormer na coluna de encoders. O método cita três arquiteturas e omite DeepLabV3, que tem linha e resultados próprios na tabela. Manter as duas variantes com essa ressalva. **pp. 2 e 4–5, seção 3.2 e Tabela 1.** |
| E22 · H23, P23 | A planilha descreve atenção residual em CO-WinF. A matriz identifica U-Net e XGBoost, mas sua nota de contagem omitia XGBoost. | CO-WinF integra pré-processamento AINCE, U-Net modificada com atenção guiada pelo gradiente no MEPS e classificação com HSTFC. HSTFC usa uma CNN leve de arquitetura não especificada, fusão de atributos convolucionais e LBP/HOG ponderada por atenção, e XGBoost 1.4.2. As métricas apresentadas são do sistema; a contribuição do classificador não é quantificada isoladamente. Os resultados de E21 na Tabela 3 são comparações bibliográficas. **pp. 1, 5–8 e 10, métodos, Implementation e Tabelas 2–3.** |
| E23 · H24, P24 | A planilha cita calibração, Grad-CAM, EfficientNet-B4, ResNet-50 e dropout bayesiano. A matriz registra YOLOv8n e os cinco comparadores. | O detector YOLOv8n localiza e classifica as lesões detectadas. Os mapas de saliência usam gradientes da saída em relação à imagem. A seção 6.3 relata YOLOv9t, YOLOv10n, detector baseado em ViT, Faster R-CNN e RetinaNet. O ViT é descrito com autoatenção. A atribuição de uma cabeça Transformer ao YOLOv9t diverge da configuração oficial da variante e permanece sem confirmação para o experimento. **pp. 8–9 e 13–15, seções 5.3 e 6.3.** |
| E24 · H25, P25 | A planilha descreve MobileNetV2 quantizada a 8 bits em microcontroladores. A matriz lista as redes comparadas e agrupa as duas adaptações de MobileNetV2. | SkinLesion Net classifica doenças, incluindo hanseníase. VGG-16, Inception V3 e Xception são comparadores. SeverityNet reaproveita MobileNetV2 e tem treino descrito com eczema e sarampo. O artigo documenta TensorFlow Lite em Android; a quantização a 8 bits e a execução em microcontrolador não foram confirmadas. Contar MobileNetV2 uma vez em E24. **pp. 2–5, Tabela II e seção Skin Lesion and Severity Detection.** |
| E25 · H26, P26 | Ambas registram Multi-SVM com LBP/WLD e cinco CNNs comparadas. A matriz remetia à Tabela 5. | Multi-SVM usa descritores manuais e as CNNs são comparações separadas. O protocolo 10 e a Tabela 3 identificam MobileNet de versão não especificada, ResNet-152, GoogLeNet, DenseNet-121 e ResNet-101. LBP/WLD, GLCM, DCT e DFT são descritores ou transformações. **pp. 3 e 8–11, protocolo 10, Figura 6 e Tabela 3.** |

Para E21, a autoatenção é propriedade do encoder Transformer do [SegFormer original](https://papers.neurips.cc/paper/2021/file/64f1f27bf1b4ec22924fd0acb550c235-Paper.pdf). Em E23, a [configuração oficial do YOLOv9t](https://raw.githubusercontent.com/WongKinYiu/yolov9/main/models/detect/yolov9-t.yaml) lista uma cabeça ELAN com saída DualDDetect. Essa fonte esclarece a variante oficial, sem identificar a configuração exata usada no artigo.

## Tarefas e etapas com uso direto

| Tarefa ou etapa | Estudos |
|---|---|
| Classificação de doença em imagens clínicas ou dermatoscópicas, como tarefa avaliada | E04, E05, E06, E07, E13, E14, E15, E17, E18, E19, E24, E25 |
| Classificação em microfotografias histopatológicas | E08 |
| Detecção de lesões por caixas delimitadoras e classificação das lesões detectadas | E23 |
| Segmentação semântica binária de ferida e fundo, com métricas de segmentação reportadas | E21, E22 |
| Delimitação ou segmentação da ROI como etapa para classificação | E06, E07, E18 |
| Classificação após segmentação, descrita como componente do sistema | E22 |
| Classificação de gravidade, com treino descrito para eczema e sarampo | E24 |

## Frequência por abordagem

As quatro categorias são não exclusivas. Aprendizado profundo requer evidência de uma rede profunda. Aprendizado tradicional nesta síntese abrange classificadores convencionais e o vizinho mais próximo. O agrupamento usado para segmentação está no inventário de modelos e componentes. Abordagem híbrida exige combinação na mesma configuração de técnicas profundas e tradicionais ou de atributos aprendidos e manuais. Poucos exemplos identifica a estratégia few-shot avaliada em E17. O agrupamento de Ward forma as classes do experimento e não integra a entrada da rede siamesa. E06 e E18 são contados como publicações distintas; a unidade de contagem não estabelece independência entre bases ou experimentos.

| Abordagem | n de 16 | Estudos |
|---|---:|---|
| Aprendizado profundo | 14 | E04, E05, E06, E13, E14, E15, E17, E18, E19, E21, E22, E23, E24, E25 |
| Aprendizado tradicional | 8 | E06, E07, E08, E13, E17, E18, E22, E25 |
| Abordagem híbrida | 5 | E06, E13, E17, E18, E22 |
| Poucos exemplos | 1 | E17 |

E06, E18 e E22 combinam atributos profundos e manuais nas configurações de classificação. Em E13, a classificação híbrida ocorre nas combinações testadas com saídas do modelo de imagens. Em E17, ocorre no comparador com Inception V3 e vizinho mais próximo. E25 avalia separadamente as CNNs e o Multi-SVM com atributos manuais.

## Frequência por modelo ou componente

O agrupamento SVM / Multi-SVM inclui BHO-SVM. U-Net inclui a adaptação de E22, que também aparece como parte do sistema CO-WinF. As duas CNNs de arquitetura específica desconhecida são identificadas pelo papel em cada estudo. O vizinho mais próximo de E17 tem um vizinho documentado e fica separado do k-NN de E06 e E07, cujo k não foi identificado. As configurações com versões conhecidas e não especificadas ficam em linhas distintas.

| Modelo ou componente | n de 16 | Estudos |
|---|---:|---|
| Random Forest | 4 | E06, E08, E13, E18 |
| SVM / Multi-SVM | 4 | E06, E07, E08, E25 |
| ANN (não especificada) | 3 | E06, E07, E08 |
| ResNet-101 | 3 | E06, E21, E25 |
| U-Net (inclui adaptação) | 3 | E06, E21, E22 |
| VGG-16 | 3 | E05, E19, E24 |
| AlexNet | 2 | E14, E18 |
| DenseNet-121 | 2 | E15, E25 |
| Inception V3 | 2 | E17, E24 |
| k-NN | 2 | E06, E07 |
| Regressão logística (inclui elastic-net) | 2 | E08, E13 |
| ResNet-50 | 2 | E05, E13 |
| Árvore de decisão | 2 | E06, E08 |
| XGBoost | 2 | E13, E22 |
| CNN do aplicativo da OMS (segundo estágio) | 1 | E04 |
| CNN extratora do HSTFC (arquitetura não especificada) | 1 | E22 |
| CO-WinF | 1 | E22 |
| DeepLabV3 | 1 | E21 |
| DeepLabV3+ | 1 | E21 |
| EfficientNet (versão não especificada) | 1 | E21 |
| EfficientNet-B0 | 1 | E19 |
| Faster R-CNN | 1 | E23 |
| FPN | 1 | E21 |
| Fuzzy C-Means com Firefly | 1 | E18 |
| GoogLeNet | 1 | E25 |
| Inception-v4 | 1 | E13 |
| LeprosyNet | 1 | E14 |
| MobileNet (versão não especificada) | 1 | E25 |
| MobileNet v1 | 1 | E19 |
| MobileNetV2 | 1 | E24 |
| Naive Bayes | 1 | E06 |
| Rede siamesa | 1 | E17 |
| ResNet (versão não especificada) | 1 | E14 |
| ResNet-152 | 1 | E25 |
| ResNeXt-50 | 1 | E21 |
| RetinaNet | 1 | E23 |
| SegFormer | 1 | E21 |
| Vision Transformer | 1 | E23 |
| Vizinho mais próximo (1-NN) | 1 | E17 |
| Xception (versão não especificada) | 1 | E24 |
| Xception v1 | 1 | E19 |
| YOLOv10n | 1 | E23 |
| YOLOv8n | 1 | E23 |
| YOLOv9t | 1 | E23 |
