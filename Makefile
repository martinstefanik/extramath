TEXMFHOME?=~/texmf
INSTALL_DIR:=$(TEXMFHOME)/tex/latex/extramath

install:
	if [ ! -d $(INSTALL_DIR) ]; then mkdir -p $(INSTALL_DIR); fi
	cp -t $(INSTALL_DIR) extramath.sty

clean:
	rm -f $(INSTALL_DIR)/extramath.sty
	rmdir --ignore-fail-on-non-empty $(INSTALL_DIR)
