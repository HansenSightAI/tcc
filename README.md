# Repositório de Documentos de Pesquisa e TCC - UnB / FGA

Este repositório contém a documentação, artigos e monografia do Trabalho de Conclusão de Curso (TCC), com foco na aplicação de inteligência artificial / visão computacional à identificação de manifestações dermatológicas associadas à hanseníase.

---

## 📁 Estrutura de Diretórios

```text
.
├── TCC/                          # Documentos e monografia em desenvolvimento
│   ├── TCC1 formatado/           # Versão atualizada e modularizada do TCC 1 (abnTeX2)
│   │   ├── tcc.tex               # Arquivo raiz para compilação da monografia
│   │   ├── bibliografia.bib      # Base de dados bibliográfica (BibTeX)
│   │   ├── Makefile              # Automação de compilação local
│   │   ├── editaveis/            # Seções e capítulos editáveis (introdução, metodologia, etc.)
│   │   ├── fixos/                # Elementos pré-textuais, comandos e configurações ABNT
│   │   └── figuras/              # Figuras, gráficos e elementos visuais
│   ├── Template TCC FCTE UnB/    # Template oficial da FCTE/UnB para referência
│   └── main.tex                  # Versão compilada anterior/legada
│
├── Monografia/                   # Versão anterior da monografia de graduação (abnTeX2 / FGA)
│   ├── tcc.tex                   # Arquivo principal
│   ├── bibliografia.bib          # Referências bibliográficas
│   ├── editaveis/                # Capítulos editáveis
│   └── fixos/                    # Pacotes e comandos fixos
│
├── SBC_Journal/                  # Artigo submetido / formatado no padrão SBC (Sociedade Brasileira de Computação)
├── SBGames/                      # Artigo / publicação no formato do simpósio SBGames
└── IEEE/                         # Artigo / publicação no formato padrão IEEE Transactions/Conferences
```

---

## 🛠️ Como Compilar o TCC

### Pré-requisitos
- Distribuição TeX Live instalada (`texlive-full` recomendada) ou compiladores `pdflatex` e `latexmk`.

### Compilação via Terminal
Entre na pasta do TCC atual e utilize o `latexmk` ou `make`:

```bash
cd "TCC/TCC1 formatado"
latexmk -pdf -interaction=nonstopmode -synctex=1 tcc.tex
```

Ou execute:
```bash
make
```

### Visualização Contínua em Tempo Real
Para compilar e assistir alterações automaticamente conforme os arquivos são salvos:

```bash
latexmk -pvc -pdf -interaction=nonstopmode -synctex=1 tcc.tex
```

---

## ✍️ Organização dos Arquivos Editáveis

Os capítulos e dados textuais do TCC ficam centralizados no diretório `TCC/TCC1 formatado/editaveis/`:
- `informacoes.tex`: título, autor, orientador, banca e dados institucionais;
- `introducao.tex`: contextualização, justificativa, questão norteadora e objetivos;
- `resumo.tex` e `abstract.tex`: resumo em português e inglês;
- `referencias.tex` / `bibliografia.bib`: citações e fontes consultadas.
