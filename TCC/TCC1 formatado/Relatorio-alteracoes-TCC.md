# Relatório das alterações na transferência do main.tex para o template

Este relatório compara os arquivos presentes em 28/10/2026. Ele cobre a transferência e, separadamente, as alterações posteriores para compilar e visualizar o trabalho. O arquivo original `/home/euller/tcc/TCC/main.tex` continua presente e é idêntico à cópia `TCC1 formatado/main-original.tex` (comparação byte a byte). Nenhum dos dois foi editado nessa transferência.

## 1. Destino do conteúdo do main.tex

- O conteúdo da introdução, a partir de “Este capítulo apresenta...”, foi para `editaveis/introducao.tex`. As partes Contexto, Problema, GQM, Objetivos, Métricas, tabelas, questão e lista de objetivos permanecem nesse arquivo.
- O aviso inicial de versão de trabalho (“TCC de Euller e Gabriel · 15/10/2026” e parágrafo seguinte) foi movido para o início de `editaveis/notas.tex`. A seção “Notas para revisão com os orientadores” e suas quatro subseções também foram para esse arquivo, apresentado como apêndice. O aviso contém menções à redação original; não foi atualizado para descrever a nova posição.
- As seis referências escritas ao final foram para `editaveis/referencias.tex`, que aparece antes do apêndice. Elas permanecem como texto manual, com as notas editoriais; não foram convertidas em registros BibTeX nem ligadas a citações automáticas.
- A seção “Situação do repositório consultado”, nas notas, foi preservada literalmente como registro histórico. Sua afirmação de que a redação não havia sido aplicada ao repositório pode não refletir a situação atual.

## 2. Trechos retirados ou substituídos no transporte

- O preâmbulo completo do `main.tex` (de `% Options for packages loaded elsewhere` até antes de `\begin{document}`) não foi levado ao arquivo principal novo. Ele continua disponível integralmente no original. O projeto usa o preâmbulo do template em `fixos/` mais alguns pacotes e comandos adicionados a `tcc.tex`.
- A seção de abertura `Introdução --- versão revisada com GQM adaptado` e seu rótulo foram retirados da versão compilada. O título `1 Introdução` foi substituído por `\chapter{Introdução}`, cuja numeração é gerada pelo template; o rótulo original dessa subseção também não foi mantido.
- A linha horizontal que separava a introdução das notas (`\begin{center}\rule{0.5\linewidth}{0.5pt}\end{center}`) foi retirada, pois as notas foram deslocadas para um apêndice.
- O título `Referências utilizadas na redação` foi substituído por `Referências`, com registro no sumário; o rótulo original foi removido.
- A marcação de seção das notas foi substituída pela estrutura de apêndice; o rótulo da seção original das notas foi removido. Os rótulos das subseções e das seções da introdução foram mantidos.
- Números escritos manualmente nos títulos, como `1.1 Contexto` e `1.4.1 Objetivo geral`, foram retirados dos nomes e substituídos por numeração automática do LaTeX. A hierarquia de comandos foi ajustada de `\subsubsection`/`\paragraph` para `\section`/`\subsection`.
- Para compatibilidade com pdfLaTeX, os caracteres matemáticos `×`, `−`, `Δ`, `∩` e `∪` foram representados por comandos matemáticos LaTeX equivalentes. Os quadros e o texto foram mantidos; a comparação integral abaixo permite verificar as alterações de marcação.

## 3. Alterações na cópia do template

A cópia foi criada em `TCC1 formatado`; os arquivos do template original foram preservados. Em comparação com ele:

- `tcc.tex`: passou a incluir somente capa, folha de rosto, sumário, introdução, referências manuais e notas em apêndice. Foram acrescentados `longtable`, `booktabs`, `array`, `calc` e o comando `\tightlist` para acomodar tabelas e listas do original.
- `editaveis/introducao.tex`: o texto demonstrativo do template foi substituído pela introdução do TCC.
- `editaveis/informacoes.tex`: dados de exemplo foram substituídos por Euller e Gabriel sem sobrenomes, ano 2026, duas palavras-chave, um título descritivo provisório e campos explicitamente sinalizados para completar. O título não veio do original como título definitivo.
- Foram criados `editaveis/notas.tex`, `editaveis/referencias.tex`, `main-original.tex` e `LEIA-ME.txt`.
- Deixaram de ser incluídos no PDF: ficha catalográfica, errata, folha de aprovação, dedicatória, agradecimentos, epígrafe, resumo, abstract, listas automáticas, abreviaturas, símbolos, capítulos demonstrativos, bibliografia automática, apêndices e anexos demonstrativos e índice. **Esses arquivos do template continuam na cópia; foram omitidos da compilação, não apagados.** O arquivo `bibliografia.bib` também permanece e contém referências do modelo, sem ser usado na versão atual.

## 4. Alterações posteriores: compilação e editor

- Em `tcc.tex`, foi acrescentado `\newcounter{none}` para permitir as tabelas do arquivo original.
- `\imprimirfolhaderosto*` passou a `\imprimirfolhaderosto*{\folhaderostoname}`, para corrigir a compilação com a versão instalada do abnTeX2.
- Foi acrescentado `% !TeX root = ../tcc.tex` no início de `editaveis/introducao.tex`, `notas.tex`, `referencias.tex` e `informacoes.tex`, para indicar o arquivo principal ao editor.
- Foram criados `.vscode/settings.json` e `VISAO-AO-VIVO.txt`, com salvamento e compilação automáticos. O LaTeX Workshop foi instalado no Antigravity. A compilação gerou `tcc.pdf` e arquivos auxiliares (como `.aux`, `.log` e `.synctex.gz`); outros arquivos gerados por compilação podem existir na pasta.

## 5. Comparação integral do conteúdo escrito

A comparação a seguir confronta somente o conteúdo entre `\begin{document}` e `\end{document}` do original com a concatenação atual de introdução, notas e referências, nessa ordem original. A versão final compilada põe referências antes das notas. Uma linha iniciada por `-` saiu daquela posição no original; uma linha iniciada por `+` aparece na versão adaptada. Linhas sem prefixo de alteração são contexto. Como o LaTeX foi reorganizado em arquivos e ambientes, algumas linhas aparecem como retiradas e adicionadas mesmo quando o texto foi preservado.

```diff
--- main.tex: corpo original
+++ introducao.tex + notas.tex + referencias.tex: conteúdo atual
@@ -1,16 +1,5 @@
-\section{Introdução --- versão revisada com GQM
-adaptado}\label{introduuxe7uxe3o-versuxe3o-revisada-com-gqm-adaptado}
-
-\textbf{TCC de Euller e Gabriel · 15/10/2026}
-
-Versão de trabalho baseada nas leituras fornecidas. A revisão da
-literatura está em andamento. O texto abaixo é uma proposta de redação;
-o contexto definido é o apoio à triagem de hanseníase na rede pública de
-saúde do Brasil. O GQM e a questão de pesquisa foram atualizados
-conforme a definição fornecida pela dupla. As notas editoriais ao final
-não integram a introdução.
-
-\subsection{1 Introdução}\label{introduuxe7uxe3o}
+% !TeX root = ../tcc.tex
+\chapter{Introdução}
 
 Este capítulo apresenta o contexto da aplicação de modelos de visão
 computacional à identificação de manifestações dermatológicas associadas
@@ -20,7 +9,7 @@
 imagens de pele, no contexto de apoio à triagem na rede pública de saúde
 do Brasil.
 
-\subsubsection{1.1 Contexto}\label{contexto}
+\section{Contexto}\label{contexto}
 
 A hanseníase integra o grupo das doenças tropicais negligenciadas e
 constitui um desafio para a identificação oportuna de casos e o
@@ -88,7 +77,7 @@
 computacionais sejam, por si só, considerados demonstração de
 efetividade clínica.
 
-\subsubsection{1.2 Problema}\label{problema}
+\section{Problema}\label{problema}
 
 A existência de modelos capazes de reconhecer padrões em imagens não
 estabelece, isoladamente, sua adequação à identificação de manifestações
@@ -146,7 +135,7 @@
 aspectos que precisam ser considerados no planejamento de avaliações
 futuras.
 
-\subsubsection{1.3 GQM adaptado e questão de
+\section{GQM adaptado e questão de
 pesquisa}\label{gqm-adaptado-e-questuxe3o-de-pesquisa}
 
 O objetivo de análise foi organizado por meio de um GQM adaptado, que
@@ -198,9 +187,9 @@
 evidências disponíveis, sem ser tomada como demonstração de equidade ou
 de desigualdade de desempenho.
 
-\subsubsection{1.4 Objetivos}\label{objetivos}
-
-\paragraph{1.4.1 Objetivo geral}\label{objetivo-geral}
+\section{Objetivos}\label{objetivos}
+
+\subsection{Objetivo geral}\label{objetivo-geral}
 
 Analisar a avaliação de desempenho de modelos de visão computacional
 aplicados à identificação de padrões associados à hanseníase em imagens
@@ -208,7 +197,7 @@
 fundamentar seu uso em apoio à triagem na rede pública de saúde do
 Brasil.
 
-\paragraph{1.4.2 Objetivos específicos}\label{objetivos-especuxedficos}
+\subsection{Objetivos específicos}\label{objetivos-especuxedficos}
 
 \begin{enumerate}
 \def\labelenumi{\arabic{enumi}.}
@@ -234,7 +223,7 @@
   pública de saúde do Brasil.
 \end{enumerate}
 
-\subsubsection{1.5 Métricas e dimensões de avaliação do
+\section{Métricas e dimensões de avaliação do
 GQM}\label{muxe9tricas-e-dimensuxf5es-de-avaliauxe7uxe3o-do-gqm}
 
 As métricas serão extraídas conforme a tarefa e o protocolo de cada
@@ -243,7 +232,7 @@
 adicionais somente serão realizados quando houver dados suficientes, com
 identificação explícita de que foram derivados nesta revisão.
 
-\paragraph{Resultados de
+\subsection{Resultados de
 classificação}\label{resultados-de-classificauxe7uxe3o}
 
 Para classificação binária, deve-se definir previamente o que constitui
@@ -283,7 +272,7 @@
 reconhecer uma ferida em paciente com hanseníase não equivale a
 diagnosticar a doença.
 
-\paragraph{Métricas relacionadas à questão de
+\subsection{Métricas relacionadas à questão de
 pesquisa}\label{muxe9tricas-relacionadas-uxe0-questuxe3o-de-pesquisa}
 
 {\def\LTcaptype{none} % do not increment counter
@@ -317,7 +306,7 @@
 \textbf{PRE = TP / (TP + FP)}. \\
 M4 & Classificação & \textbf{F1-score} & Média harmônica entre precisão
 e sensibilidade, considerando o efeito de falsos positivos e falsos
-negativos: \textbf{F1 = 2 × PRE × SEN / (PRE + SEN)}, ou \textbf{2TP /
+negativos: \textbf{F1 = 2 $\times$ PRE $\times$ SEN / (PRE + SEN)}, ou \textbf{2TP /
 (2TP + FP + FN)}. \\
 M5 & Classificação geral & \textbf{Acurácia --- Accuracy (ACC)} &
 Proporção total de classificações corretas: \textbf{ACC = (TP + TN) /
@@ -325,18 +314,18 @@
 acertos totais / unidades totais. \\
 M6 & Equidade do desempenho & \textbf{Diferença de desempenho entre
 grupos} & Comparação da mesma métrica entre grupos de tons de pele,
-quando disponível. Para dois grupos A e B: \textbf{Δ = métrica(A) −
+quando disponível. Para dois grupos A e B: \textbf{$\Delta$ = métrica(A) $-$
 métrica(B)}, com grupos e direção identificados. Registrar tamanhos dos
 grupos, condições de avaliação e incerteza, quando reportados. \\
 M7 & Generalização & \textbf{Variação de desempenho entre datasets} &
 Comparação da mesma métrica entre avaliações em dados de distribuição
 semelhante à de treinamento e dados de distribuição diferente:
-\textbf{gap = métrica(ID) − métrica(OOD)}, quando o desenho permitir.
+\textbf{gap = métrica(ID) $-$ métrica(OOD)}, quando o desenho permitir.
 Registrar se houve adaptação ou retreinamento e se tarefa/classes são
 comparáveis. \\
 M8 & Segmentação / sobreposição espacial & \textbf{Intersection over
 Union (IoU)} & Interseção dividida pela união das regiões prevista P e
-de referência G: \textbf{IoU = área(P ∩ G) / área(P ∪ G)}. Em máscaras
+de referência G: \textbf{IoU = área(P $\cap$ G) / área(P $\cup$ G)}. Em máscaras
 binárias: \textbf{IoU = TP\_pixel / (TP\_pixel + FP\_pixel +
 FN\_pixel)}. Registrar mIoU separadamente quando houver média entre
 classes. \\
@@ -372,13 +361,21 @@
 devem ser registradas com sua definição e contexto. A análise de
 equidade não será restrição de elegibilidade dos artigos e não será
 presumida quando não houver resultados por grupo.
-
-\begin{center}\rule{0.5\linewidth}{0.5pt}\end{center}
-
-\section{Notas para revisão com os orientadores --- fora do texto do
-capítulo}\label{notas-para-revisuxe3o-com-os-orientadores-fora-do-texto-do-capuxedtulo}
-
-\subsection{Estrutura adotada e relação com os
+% !TeX root = ../tcc.tex
+\begin{apendicesenv}
+\partapendices
+\chapter{Notas para revisão com os orientadores --- fora do texto do capítulo}
+
+\textbf{TCC de Euller e Gabriel · 15/10/2026}
+
+Versão de trabalho baseada nas leituras fornecidas. A revisão da
+literatura está em andamento. O texto abaixo é uma proposta de redação;
+o contexto definido é o apoio à triagem de hanseníase na rede pública de
+saúde do Brasil. O GQM e a questão de pesquisa foram atualizados
+conforme a definição fornecida pela dupla. As notas editoriais ao final
+não integram a introdução.
+
+\section{Estrutura adotada e relação com os
 exemplos}\label{estrutura-adotada-e-relauxe7uxe3o-com-os-exemplos}
 
 Os três TCCs fornecidos organizam suas introduções em torno de contexto,
@@ -394,7 +391,7 @@
 fontes científicas sobre hanseníase ou visão computacional. Não se
 reproduziu o conteúdo temático desses trabalhos.
 
-\subsection{Pontos que precisam de
+\section{Pontos que precisam de
 decisão}\label{pontos-que-precisam-de-decisuxe3o}
 
 \begin{itemize}
@@ -433,7 +430,7 @@
   extração não terminarem.
 \end{itemize}
 
-\subsection{Mapa das afirmações e das
+\section{Mapa das afirmações e das
 fontes}\label{mapa-das-afirmauxe7uxf5es-e-das-fontes}
 
 {\def\LTcaptype{none} % do not increment counter
@@ -486,7 +483,7 @@
 Fernandes e os estudos primários fornecidos. Isso evita atribuir aos
 revisores resultados que pertencem aos estudos citados.
 
-\subsection{Situação do repositório
+\section{Situação do repositório
 consultado}\label{situauxe7uxe3o-do-reposituxf3rio-consultado}
 
 Consulta à branch \texttt{master} de \texttt{HansenSightAI/tcc}, em
@@ -510,8 +507,11 @@
 acrescentar as referências abaixo. Antes de remover referências antigas,
 verificar se ainda são citadas em outros capítulos do modelo.
 
-\section{Referências utilizadas na
-redação}\label{referuxeancias-utilizadas-na-redauxe7uxe3o}
+
+\end{apendicesenv}
+% !TeX root = ../tcc.tex
+\chapter*[Referências]{Referências}
+\addcontentsline{toc}{chapter}{Referências}
 
 FERNANDES, Jacks Renan Neves; TELES, Ariel Soares; FERNANDES, Thayaná
 Ribeiro Silva; LIMA, Lucas Daniel Batista; BALHARA, Surjeet; GUPTA,

```

## 6. Diferenças exatas nos três arquivos alterados do template

Os blocos seguintes comparam a versão original do template com a versão atual da cópia. Incluem também as correções posteriores de compilação e os comentários de arquivo principal.

### tcc.tex

```diff
--- template original/tcc.tex
+++ TCC1 formatado/tcc.tex
@@ -1,55 +1,27 @@
-% Não esqueça de definir este arquivo como o principal
-% Atualizado a partir do arquivo do prof. Edson Alves
-% Anteriormente publicado em: https://www.overleaf.com/latex/templates/template-tcc-latex-unb-fga/cfmfvnphbjkx
-% Edição por Alan Müller - FCTE, 2025
-
+% Arquivo principal: versão adaptada ao template FCTE/UnB.
 \input{fixos/pacotes}
 \input{fixos/comandos}
 \usepackage{fixos/customizacoes}
+\usepackage{longtable,booktabs,array,calc}
+
+\newcounter{none}
+\providecommand{\tightlist}{\setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}
 \ifpdf
     \usepackage{cmap}
 \fi
-
 \input{editaveis/informacoes}
 \input{fixos/informacoes}
 \input{fixos/setup}
-
 \begin{document}
-
-\frenchspacing 
+\frenchspacing
 \imprimircapa
-\imprimirfolhaderosto*
-
-\input{fixos/fichaCatalografica}
-\input{editaveis/errata}
-\input{fixos/folhaDeAprovacao}
-\input{editaveis/dedicatoria}
-\input{editaveis/agradecimentos}
-\input{editaveis/epigrafe}
-\input{editaveis/resumo}
-\input{editaveis/abstract}
-\input{fixos/listasAutomaticas}
-\input{editaveis/abreviaturas}
-\input{editaveis/simbolos}
+\imprimirfolhaderosto*{\folhaderostoname}
+% Os demais elementos pré-textuais foram omitidos porque não constam da fonte.
 \input{fixos/indiceAutomatico}
-
 \textual
-
 \input{editaveis/introducao}
-\input{editaveis/aspectosgerais}
-\input{editaveis/consideracoes}
-%\input{editaveis/textoepostexto}
-\input{editaveis/elementosdotexto}
-\input{editaveis/elementosdopostexto}
-
-\bookmarksetup{startatroot} 
-
+\bookmarksetup{startatroot}
 \postextual
-
-\bibliography{bibliografia} 
-\input{editaveis/apendices}
-\input{editaveis/anexos}
-\printindex
-
+\input{editaveis/referencias}
+\input{editaveis/notas}
 \end{document}
-

```

### editaveis/informacoes.tex

```diff
--- template original/editaveis/informacoes.tex
+++ TCC1 formatado/editaveis/informacoes.tex
@@ -1,21 +1,14 @@
-% Dados pessoais
-\autor{Nome do Autor}
-\curso{Nome do Curso}
-
-% Dados do trabalho
-\titulo{Título: Subtítulo do Trabalho}
-\data{2025}
-\palavraChaveUm{Palavra-chave01}
-\palavraChaveDois{Palavra-chave02}
-
-% Dados da orientacao
-\orientador{Titulação Acadêmica e Nome do Orientador}
-\coorientador{quando houver, Titulação Acadêmica e Nome do Orientador}
-
-% Dados para a ficha catalográfica
-\cdu{02:141:005.6}
-
-% Dados da aprovação do trabalho
-\dataDaAprovacao{20 de março de 2025}
-\membroConvidadoUm{Titulação e Nome do Professor Convidado 01}
-\membroConvidadoDois{Titulação e Nome do Professor Convidado 02}
+% !TeX root = ../tcc.tex
+% Dados incompletos no arquivo de origem: preencher antes da entrega.
+\autor{Euller e Gabriel [nomes completos a preencher]}
+\curso{[Curso a preencher]}
+\titulo{Avaliação de modelos de visão computacional na identificação de padrões associados à hanseníase em imagens de pele [título provisório]}
+\data{2026}
+\palavraChaveUm{Hanseníase}
+\palavraChaveDois{Visão computacional}
+\orientador{[Orientador a preencher]}
+\coorientador{[Coorientador, se houver]}
+\cdu{[A preencher]}
+\dataDaAprovacao{[A preencher]}
+\membroConvidadoUm{[A preencher]}
+\membroConvidadoDois{[A preencher]}

```

### editaveis/introducao.tex

```diff
--- template original/editaveis/introducao.tex
+++ TCC1 formatado/editaveis/introducao.tex
@@ -1,7 +1,364 @@
-\chapter*[Introdução]{Introdução}
-\addcontentsline{toc}{chapter}{Introdução}
-
-Este documento apresenta considerações gerais e preliminares relacionadas 
-à redação de relatórios de Projeto de Graduação da Faculdade de Ciências e Tecnlogias em Engenharia (FCTE). São abordados os diferentes aspectos sobre a estrutura do trabalho, uso de programas de auxilio a edição, tiragem de cópias, encadernação, etc.
-
-Este template é uma adaptação do ABNTeX2\footnote{\url{https://github.com/abntex/abntex2/}}.
+% !TeX root = ../tcc.tex
+\chapter{Introdução}
+
+Este capítulo apresenta o contexto da aplicação de modelos de visão
+computacional à identificação de manifestações dermatológicas associadas
+à hanseníase. São delimitados o problema de pesquisa, a questão
+norteadora e os objetivos do trabalho, considerando a avaliação de
+desempenho na identificação de padrões associados à hanseníase em
+imagens de pele, no contexto de apoio à triagem na rede pública de saúde
+do Brasil.
+
+\section{Contexto}\label{contexto}
+
+A hanseníase integra o grupo das doenças tropicais negligenciadas e
+constitui um desafio para a identificação oportuna de casos e o
+acompanhamento das pessoas afetadas. Em sua revisão da literatura,
+Fernandes et al.~(2024) destacam que o diagnóstico se baseia
+principalmente na avaliação clínica e que a semelhança com outras
+condições dermatológicas pode dificultar o reconhecimento da doença.
+Nesse contexto, a investigação de recursos computacionais de apoio à
+análise de manifestações cutâneas pode contribuir para ampliar as
+possibilidades de suporte aos profissionais de saúde, desde que sua
+avaliação considere as características da tarefa e da população de
+interesse.
+
+A análise automatizada de imagens dermatológicas tem sido investigada
+por meio de técnicas de aprendizado de máquina e aprendizado profundo.
+Fernandes et al.~(2024) identificaram 21 estudos sobre inteligência
+artificial no apoio ao diagnóstico da hanseníase e observaram que a
+maior parte utilizava imagens de lesões cutâneas e tarefas de
+classificação multiclasse. A inclusão da hanseníase em sistemas voltados
+a diferentes doenças indica que os resultados dessas propostas devem ser
+interpretados tanto em relação ao conjunto de classes quanto ao
+reconhecimento específico da doença.
+
+Entre os estudos experimentais, Jaikishore, Udutalapally e Das (2021)
+desenvolveram uma abordagem baseada em MobileNetV2 para classificar
+imagens de eczema, sarampo, hanseníase e pele saudável, incorporando o
+modelo a um protótipo Android. Yotsu et al.~(2023), por sua vez,
+avaliaram ResNet-50 e VGG-16 na classificação de cinco doenças tropicais
+negligenciadas com manifestações cutâneas. Em outra linha de
+investigação, Eita e Rizk (2025) propuseram um sistema baseado em YOLOv8
+para localizar e classificar lesões de diferentes condições, incluindo
+hanseníase, com uso de mapas de saliência para apoiar a interpretação
+das predições. Esses trabalhos ilustram abordagens distintas de análise
+de imagens, com diferentes requisitos de dados, saídas e procedimentos
+de avaliação.
+
+O campo também compreende tarefas relacionadas ao acompanhamento de
+manifestações e complicações da doença. Sanchez et al.~(2024)
+apresentaram o CO2Wounds-V2, um conjunto de fotografias de feridas
+crônicas de pacientes com hanseníase, acompanhado de experimentos de
+segmentação semântica. Nesse caso, a tarefa consiste em delimitar
+regiões de ferida nas imagens, e não em determinar se o paciente
+apresenta hanseníase. Essa distinção é necessária para organizar a
+literatura e evitar que medidas de segmentação sejam interpretadas como
+evidências de desempenho diagnóstico.
+
+A caracterização das populações representadas nos dados também integra a
+avaliação dos modelos. Yotsu et al.~(2023) utilizaram fotografias
+coletadas em Costa do Marfim e Gana, descrevendo a população como
+composta por pessoas de pele escura, com fototipos de Fitzpatrick IV ou
+superiores. O estudo oferece evidências diretamente relacionadas à
+análise de imagens de pele escura, mas não apresenta comparação de
+desempenho entre os diferentes fototipos. Eita e Rizk (2025) também
+reconhecem limitações na diversidade dos dados e apontam a ampliação da
+representação de pessoas com tons de pele mais escuros como uma direção
+de trabalho futuro.
+
+Esses estudos motivam a investigação de como o desempenho dos modelos é
+definido, mensurado e interpretado. Para o presente trabalho, a
+avaliação compreende os resultados preditivos relativos à tarefa, os
+procedimentos empregados para obtê-los e as evidências disponíveis sobre
+sua aplicação a novos dados e a diferentes grupos de tom de pele. A
+utilização futura em apoio à triagem na rede pública de saúde do Brasil
+constitui o contexto de interesse da pesquisa, sem que os resultados
+computacionais sejam, por si só, considerados demonstração de
+efetividade clínica.
+
+\section{Problema}\label{problema}
+
+A existência de modelos capazes de reconhecer padrões em imagens não
+estabelece, isoladamente, sua adequação à identificação de manifestações
+de hanseníase em uma população específica. Os estudos analisados
+apresentam diferenças nas tarefas, nas classes de interesse, na
+composição dos conjuntos de dados e nas métricas utilizadas. Classificar
+uma imagem entre doenças, localizar uma lesão e segmentar uma ferida
+produzem resultados com significados distintos. Consequentemente, uma
+comparação baseada apenas nos maiores valores publicados pode
+desconsiderar diferenças essenciais entre os experimentos (YOTSU et al.,
+2023; SANCHEZ et al., 2024; EITA; RIZK, 2025).
+
+Além disso, medidas agregadas podem não representar adequadamente o
+desempenho referente à hanseníase. No estudo de Yotsu et al.~(2023), a
+Task 2 apresentou acurácias globais de 77\% e 80\% nos dois cenários
+avaliados. Entretanto, a leitura da diagonal correspondente à hanseníase
+nas matrizes de confusão indica proporções de classificação correta de
+12\% e 13\%, respectivamente. Como as linhas representam a classe real,
+esses valores podem ser interpretados como sensibilidade por imagem para
+a classe hanseníase. O contraste evidencia a importância de examinar
+resultados específicos por doença, em vez de atribuir à hanseníase o
+desempenho global do sistema.
+
+A relação entre os resultados obtidos e os tons de pele constitui outra
+dimensão do problema. A presença de imagens de pele escura em um
+conjunto de dados não demonstra que o modelo apresente comportamento
+equivalente entre diferentes tons. No estudo de Yotsu et al.~(2023), a
+população é caracterizada por um intervalo de fototipos, mas não são
+fornecidos resultados separados por esses grupos. Já Eita e Rizk (2025)
+reconhecem limitações de representatividade e a necessidade de ampliar a
+diversidade dos dados. Essas observações sustentam a necessidade de
+examinar a caracterização populacional e a avaliação por grupos, sem
+permitir concluir, a partir dessas evidências isoladas, que todos os
+modelos tenham desempenho inferior em pele negra.
+
+Também permanece necessário distinguir a avaliação computacional da
+avaliação em contexto assistencial. O desenvolvimento de um aplicativo
+ou a obtenção de resultados em conjuntos de imagens não comprova sua
+contribuição para o atendimento em serviços de saúde. Enquanto
+Jaikishore, Udutalapally e Das (2021) apresentam um protótipo de
+aplicação móvel, Eita e Rizk (2025) situam os estudos prospectivos com
+dermatologistas entre as atividades futuras. Assim, a relevância dessas
+propostas para a rede pública exige considerar o alcance e os limites
+dos procedimentos de validação relatados.
+
+Diante desse cenário, o problema investigado consiste em compreender
+quais evidências e procedimentos permitem avaliar o desempenho de
+modelos de visão computacional na identificação de manifestações
+dermatológicas associadas à hanseníase, no contexto de apoio à triagem
+na rede pública de saúde do Brasil, considerando a tarefa realizada, as
+características dos dados e os limites de generalização dos resultados.
+A comparação entre tons de pele será examinada quando houver informações
+disponíveis, como uma dimensão complementar da avaliação. A revisão em
+andamento buscará sistematizar essas informações e identificar os
+aspectos que precisam ser considerados no planejamento de avaliações
+futuras.
+
+\section{GQM adaptado e questão de
+pesquisa}\label{gqm-adaptado-e-questuxe3o-de-pesquisa}
+
+O objetivo de análise foi organizado por meio de um GQM adaptado, que
+explicita o objeto, o propósito, o foco, o ponto de vista e o contexto
+da investigação. O quadro orienta a definição da questão de pesquisa e
+das medidas a serem extraídas dos estudos.
+
+{\def\LTcaptype{none} % do not increment counter
+\begin{longtable}[]{@{}
+  >{\raggedright\arraybackslash}p{(\linewidth - 2\tabcolsep) * \real{0.5000}}
+  >{\raggedright\arraybackslash}p{(\linewidth - 2\tabcolsep) * \real{0.5000}}@{}}
+\toprule\noalign{}
+\begin{minipage}[b]{\linewidth}\raggedright
+Característica
+\end{minipage} & \begin{minipage}[b]{\linewidth}\raggedright
+Valor
+\end{minipage} \\
+\midrule\noalign{}
+\endhead
+\bottomrule\noalign{}
+\endlastfoot
+\textbf{Analisar} & Modelos de visão computacional aplicados à
+identificação de manifestações dermatológicas. \\
+\textbf{Com o propósito de} & Avaliar o desempenho dos modelos aplicados
+à identificação de padrões em imagens de pele. \\
+\textbf{Com foco em} & Identificação de características patológicas de
+hanseníase. \\
+\textbf{Do ponto de vista de} & Pesquisadores das áreas de Engenharia de
+Software e da área da saúde. \\
+\textbf{No contexto de} & Apoio à triagem de hanseníase na rede pública
+de saúde do Brasil. \\
+\end{longtable}
+}
+
+A investigação é orientada pela seguinte questão:
+
+\begin{quote}
+Como avaliar o desempenho de modelos de visão computacional aplicados à
+identificação de padrões associados à hanseníase em imagens de pele, no
+contexto da rede pública de saúde do Brasil?
+\end{quote}
+
+Nesta etapa, a questão será abordada por meio da identificação e análise
+das evidências apresentadas na literatura. Serão examinadas as tarefas
+realizadas, os modelos empregados, as características dos conjuntos de
+dados, os procedimentos de avaliação, as métricas e os resultados, bem
+como as informações disponíveis sobre tons de pele e generalização. A
+ausência de avaliação por grupo será registrada como uma limitação das
+evidências disponíveis, sem ser tomada como demonstração de equidade ou
+de desigualdade de desempenho.
+
+\section{Objetivos}\label{objetivos}
+
+\subsection{Objetivo geral}\label{objetivo-geral}
+
+Analisar a avaliação de desempenho de modelos de visão computacional
+aplicados à identificação de padrões associados à hanseníase em imagens
+de pele, a partir da síntese das evidências da literatura, visando
+fundamentar seu uso em apoio à triagem na rede pública de saúde do
+Brasil.
+
+\subsection{Objetivos específicos}\label{objetivos-especuxedficos}
+
+\begin{enumerate}
+\def\labelenumi{\arabic{enumi}.}
+\tightlist
+\item
+  Caracterizar as tarefas, os modelos e as abordagens de visão
+  computacional empregados na análise de manifestações dermatológicas
+  associadas à hanseníase.
+\item
+  Identificar os conjuntos de dados utilizados, suas formas de aquisição
+  e anotação e as informações disponíveis sobre as populações e os tons
+  de pele representados.
+\item
+  Sistematizar os procedimentos de avaliação, as métricas e os
+  resultados reportados, distinguindo medidas globais, resultados
+  específicos de hanseníase e unidades de análise.
+\item
+  Examinar as evidências de generalização e de avaliação do desempenho
+  entre grupos de tom de pele, quando disponíveis.
+\item
+  Identificar limitações e lacunas que fundamentem o planejamento de uma
+  avaliação futura de modelos no contexto de apoio à triagem na rede
+  pública de saúde do Brasil.
+\end{enumerate}
+
+\section{Métricas e dimensões de avaliação do
+GQM}\label{muxe9tricas-e-dimensuxf5es-de-avaliauxe7uxe3o-do-gqm}
+
+As métricas serão extraídas conforme a tarefa e o protocolo de cada
+estudo. Não se exige que todos os artigos apresentem todas as medidas.
+Métricas ausentes serão registradas como não reportadas; cálculos
+adicionais somente serão realizados quando houver dados suficientes, com
+identificação explícita de que foram derivados nesta revisão.
+
+\subsection{Resultados de
+classificação}\label{resultados-de-classificauxe7uxe3o}
+
+Para classificação binária, deve-se definir previamente o que constitui
+a classe positiva e o diagnóstico/rótulo de referência. Em modelos
+multiclasse, a hanseníase pode ser analisada como classe positiva frente
+às demais classes (um contra todos). As definições abaixo se referem à
+unidade avaliada --- por exemplo, imagem --- e não implicam
+automaticamente diagnóstico por paciente.
+
+{\def\LTcaptype{none} % do not increment counter
+\begin{longtable}[]{@{}
+  >{\raggedright\arraybackslash}p{(\linewidth - 2\tabcolsep) * \real{0.5000}}
+  >{\raggedright\arraybackslash}p{(\linewidth - 2\tabcolsep) * \real{0.5000}}@{}}
+\toprule\noalign{}
+\begin{minipage}[b]{\linewidth}\raggedright
+Resultado
+\end{minipage} & \begin{minipage}[b]{\linewidth}\raggedright
+Significado
+\end{minipage} \\
+\midrule\noalign{}
+\endhead
+\bottomrule\noalign{}
+\endlastfoot
+\textbf{TP --- True Positive} & A unidade pertence à classe positiva
+segundo a referência e o modelo a classifica como positiva. \\
+\textbf{TN --- True Negative} & A unidade pertence à classe negativa
+segundo a referência e o modelo a classifica como negativa. \\
+\textbf{FP --- False Positive} & A unidade pertence à classe negativa
+segundo a referência, mas o modelo a classifica como positiva. \\
+\textbf{FN --- False Negative} & A unidade pertence à classe positiva
+segundo a referência, mas o modelo a classifica como negativa. \\
+\end{longtable}
+}
+
+A classe positiva pode representar hanseníase ou uma manifestação
+definida no protocolo do estudo. Essas tarefas devem ser distinguidas:
+reconhecer uma ferida em paciente com hanseníase não equivale a
+diagnosticar a doença.
+
+\subsection{Métricas relacionadas à questão de
+pesquisa}\label{muxe9tricas-relacionadas-uxe0-questuxe3o-de-pesquisa}
+
+{\def\LTcaptype{none} % do not increment counter
+\begin{longtable}[]{@{}
+  >{\raggedright\arraybackslash}p{(\linewidth - 6\tabcolsep) * \real{0.2500}}
+  >{\raggedright\arraybackslash}p{(\linewidth - 6\tabcolsep) * \real{0.2500}}
+  >{\raggedright\arraybackslash}p{(\linewidth - 6\tabcolsep) * \real{0.2500}}
+  >{\raggedright\arraybackslash}p{(\linewidth - 6\tabcolsep) * \real{0.2500}}@{}}
+\toprule\noalign{}
+\begin{minipage}[b]{\linewidth}\raggedright
+ID
+\end{minipage} & \begin{minipage}[b]{\linewidth}\raggedright
+Dimensão do desempenho
+\end{minipage} & \begin{minipage}[b]{\linewidth}\raggedright
+Métrica
+\end{minipage} & \begin{minipage}[b]{\linewidth}\raggedright
+Descrição e operacionalização
+\end{minipage} \\
+\midrule\noalign{}
+\endhead
+\bottomrule\noalign{}
+\endlastfoot
+M1 & Classificação & \textbf{Sensibilidade --- Sensitivity (SEN/Recall)}
+& Proporção de positivos corretamente identificados: \textbf{SEN = TP /
+(TP + FN)}. \\
+M2 & Classificação & \textbf{Especificidade --- Specificity (SPE)} &
+Proporção de negativos corretamente identificados: \textbf{SPE = TN /
+(TN + FP)}. \\
+M3 & Classificação & \textbf{Precisão --- Precision (PRE)} & Proporção
+de predições positivas que correspondem a positivos de referência:
+\textbf{PRE = TP / (TP + FP)}. \\
+M4 & Classificação & \textbf{F1-score} & Média harmônica entre precisão
+e sensibilidade, considerando o efeito de falsos positivos e falsos
+negativos: \textbf{F1 = 2 $\times$ PRE $\times$ SEN / (PRE + SEN)}, ou \textbf{2TP /
+(2TP + FP + FN)}. \\
+M5 & Classificação geral & \textbf{Acurácia --- Accuracy (ACC)} &
+Proporção total de classificações corretas: \textbf{ACC = (TP + TN) /
+(TP + TN + FP + FN)}, na formulação binária. Para multiclasse, usar
+acertos totais / unidades totais. \\
+M6 & Equidade do desempenho & \textbf{Diferença de desempenho entre
+grupos} & Comparação da mesma métrica entre grupos de tons de pele,
+quando disponível. Para dois grupos A e B: \textbf{$\Delta$ = métrica(A) $-$
+métrica(B)}, com grupos e direção identificados. Registrar tamanhos dos
+grupos, condições de avaliação e incerteza, quando reportados. \\
+M7 & Generalização & \textbf{Variação de desempenho entre datasets} &
+Comparação da mesma métrica entre avaliações em dados de distribuição
+semelhante à de treinamento e dados de distribuição diferente:
+\textbf{gap = métrica(ID) $-$ métrica(OOD)}, quando o desenho permitir.
+Registrar se houve adaptação ou retreinamento e se tarefa/classes são
+comparáveis. \\
+M8 & Segmentação / sobreposição espacial & \textbf{Intersection over
+Union (IoU)} & Interseção dividida pela união das regiões prevista P e
+de referência G: \textbf{IoU = área(P $\cap$ G) / área(P $\cup$ G)}. Em máscaras
+binárias: \textbf{IoU = TP\_pixel / (TP\_pixel + FP\_pixel +
+FN\_pixel)}. Registrar mIoU separadamente quando houver média entre
+classes. \\
+M9 & Detecção / segmentação por instância & \textbf{Mean Average
+Precision (mAP)} & Média dos valores de AP das classes consideradas; AP
+resume a curva precisão--recall segundo a convenção do benchmark.
+Registrar o critério de correspondência e o limiar de IoU: por exemplo,
+\textbf{mAP@0,50} ou \textbf{mAP@0,50:0,95}. Distinguir AP de caixas e
+AP de máscaras. \\
+\end{longtable}
+}
+
+\textbf{IoU e mAP não são métricas exclusivas de segmentação.} Em
+detecção, IoU mede sobreposição de caixas e pode determinar a
+correspondência entre predição e referência; mAP resume o desempenho das
+detecções. Na segmentação semântica, IoU/mIoU mede sobreposição de
+máscaras por classe. Na segmentação por instância, também se utiliza
+AP/mAP calculada sobre máscaras. A documentação de avaliação COCO
+explicita essa distinção entre caixas e máscaras (COCO, s.d.).
+
+\textbf{Critérios de interpretação:} registrar se a unidade é paciente,
+imagem, objeto ou pixel; separar resultados específicos de hanseníase de
+médias globais; identificar médias macro, micro ou ponderadas; registrar
+denominadores nulos como indefinidos ou conforme a convenção explicitada
+no estudo. Diferenças entre métricas expressas em porcentagem devem ser
+apresentadas em pontos percentuais. M6 e M7 são dimensões de comparação,
+não métricas únicas universalmente definidas. Desempenhos de modelos
+diferentes em bases diferentes não isolam o efeito da mudança de
+distribuição.
+
+O conjunto de métricas funciona como orientação para extração, não como
+lista fechada. Medidas adicionais reportadas pelos artigos, como MCC,
+devem ser registradas com sua definição e contexto. A análise de
+equidade não será restrição de elegibilidade dos artigos e não será
+presumida quando não houver resultados por grupo.
+

```
