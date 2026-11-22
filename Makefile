# latexmk acompanha os arquivos incluidos, figuras e bibliografia do tcc.tex.
LATEXMK ?= latexmk
TCC_DIR := TCC/TCC1 formatado
MAIN_FILE := tcc.tex
BUILD_DIR := .build
LATEXMK_FLAGS := -pdf -interaction=nonstopmode -halt-on-error -file-line-error -synctex=1

.PHONY: all pdf watch clean

all: pdf

pdf:
	mkdir -p "$(TCC_DIR)/$(BUILD_DIR)"
	cd "$(TCC_DIR)" && $(LATEXMK) $(LATEXMK_FLAGS) -outdir=$(BUILD_DIR) $(MAIN_FILE)

watch:
	mkdir -p "$(TCC_DIR)/$(BUILD_DIR)"
	cd "$(TCC_DIR)" && $(LATEXMK) $(LATEXMK_FLAGS) -outdir=$(BUILD_DIR) -pvc $(MAIN_FILE)

# Remove auxiliares, preservando tcc.pdf e os PDFs das figuras.
clean:
	cd "$(TCC_DIR)" && $(LATEXMK) -outdir=$(BUILD_DIR) -c $(MAIN_FILE)
