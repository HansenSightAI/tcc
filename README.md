# TCC — Inteligência artificial e hanseníase

Repositório de trabalho do TCC da UnB/FCTE sobre inteligência artificial e visão computacional aplicadas à identificação de manifestações dermatológicas associadas à hanseníase.

## Onde trabalhar

O documento ativo é [tcc.tex](<TCC/TCC1 formatado/tcc.tex>). Edite seus capítulos em [editaveis/](<TCC/TCC1 formatado/editaveis/>). As demais versões e os materiais de referência têm finalidades separadas.

```text
.
├── TCC/
│   └── TCC1 formatado/          # Documento ativo
│       ├── tcc.tex              # Entrada da compilação
│       ├── editaveis/           # Capítulos, resumos, apêndices e informações
│       ├── fixos/               # Configuração e elementos do modelo LaTeX
│       ├── figuras/             # Imagens usadas no documento
│       ├── bibliografia.bib
│       ├── referencias_tcc.bib
│       └── .build/              # tcc.pdf e arquivos auxiliares gerados
├── Leituras_Artigos_Notas/      # Acervo bibliográfico e notas de leitura
│   ├── TCC.bib                 # Bibliografia da coleção
│   └── files/                  # Uma pasta por artigo: originais, anotações e notas
├── dados/
│   └── extracao/               # Planilhas de extração da revisão
├── templates/                  # Modelos e materiais de referência
│   ├── Template TCC FCTE UnB/
│   ├── Monografia/              # Monografia de outro autor, usada como modelo
│   ├── IEEE/
│   ├── SBC_Journal/
│   └── SBGames/
├── Makefile                    # Compilação a partir da raiz
└── README.md
```

## Compilação

### Linux

Com TeX Live e `latexmk` instalados, execute a partir da raiz:

```bash
make
```

O `Makefile` da raiz compila em `TCC/TCC1 formatado/.build/`, pasta ignorada pelo Git. O `latexmk` executa as rodadas necessárias de LaTeX e BibTeX e acompanha os arquivos incluídos por `tcc.tex`, incluindo `referencias_tcc.bib`.

- `make` ou `make pdf`: gera ou atualiza `TCC/TCC1 formatado/.build/tcc.pdf`.
- `make watch`: acompanha alterações e atualiza o mesmo PDF continuamente.
- `make clean`: remove auxiliares, preservando o PDF do TCC e os PDFs das figuras.

Sem `make`, execute `latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -synctex=1 tcc.tex` dentro de `TCC/TCC1 formatado/`. O arquivo `.latexmkrc` direciona a saída para `.build/`. No VS Code com LaTeX Workshop, use `%DIR%/.build` em `latex-workshop.latex.outDir` para usar a mesma pasta. Após uma limpeza, compile novamente para reconstruir sumário, citações e referências. Uma execução isolada de `pdflatex` pode deixar esses elementos incompletos.

### macOS

O Makefile usa comandos compatíveis com macOS; não exige Homebrew nem caminhos específicos de Linux. É necessário ter `make` e uma distribuição TeX completa disponíveis no terminal.

1. Instale o [MacTeX completo](https://tug.org/mactex/). Ele inclui TeX Live e Ghostscript, utilizado na conversão da capa EPS. Instalações mínimas como BasicTeX podem exigir pacotes adicionais do projeto.
2. Se `make --version` solicitar ferramentas de desenvolvimento ou não funcionar, instale as [Command Line Tools da Apple](https://developer.apple.com/documentation/xcode/installing-the-command-line-tools) com `xcode-select --install` e conclua a instalação.
3. Abra um novo terminal após instalar o MacTeX e confira:

```bash
make --version
latexmk -v
pdflatex --version
bibtex --version
gs --version
kpsewhich abntex2.cls
kpsewhich abntex2-alf.bst
```

Os dois comandos `kpsewhich` devem retornar caminhos. Se os comandos TeX não forem encontrados, o [diretório de programas do MacTeX](https://tug.org/mactex/What_Is_Installed.pdf) é `/Library/TeX/texbin`. Para a sessão atual:

```bash
export PATH="/Library/TeX/texbin:$PATH"
```

Depois, execute `make` na raiz do repositório. Não é necessário habilitar `-shell-escape` irrestrito: a conversão EPS usa as ferramentas permitidas pela instalação TeX. A compatibilidade foi conferida pela documentação e pelos comandos usados; a execução foi testada em Linux, não em um Mac.

## Regras de organização

- **Texto do TCC:** capítulos em `TCC/TCC1 formatado/editaveis/` e imagens em `figuras/`. Preserve os caminhos relativos dos comandos LaTeX.
- **Literatura:** guarde cada artigo e suas notas juntos em `Leituras_Artigos_Notas/files/`. Preserve os nomes e identificadores já usados nas notas e no BibTeX.
- **Dados de extração:** guarde planilhas em `dados/extracao/`. A [planilha atual](<dados/extracao/data_extraction (2).ods>) manteve o nome de origem para preservar a rastreabilidade. A pasta contém dados extraídos da literatura; não implica uma base de imagens clínicas.
- **Modelos:** use `templates/` como referência.
- **Bibliografias:** `Leituras_Artigos_Notas/TCC.bib` pertence ao acervo; os `.bib` do documento pertencem ao TCC.
- **Arquivos gerados:** auxiliares LaTeX e logs são ignorados pelo `.gitignore`. Há auxiliares antigos já rastreados pelo Git; a regra de ignore não os remove do histórico nem do índice. PDFs de artigos e PDFs de entrega não devem ser apagados por uma limpeza genérica.
- **Novos nomes:** prefira nomes descritivos, sem espaços ou acentos para novas pastas e scripts. Evite renomear artigos ou arquivos citados apenas para padronizar a aparência.
