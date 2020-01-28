  
PACKAGE_NAME=fonts-dejavu

.PHONY: all
.PHONY: doc

all:
	:

doc: doc-fonts-dejavu.pdf

doc-fonts-dejavu.pdf: doc-$(PACKAGE_NAME).saty satysfi-$(PACKAGE_NAME).opam fonts.satysfi-hash Satyristes
	opam pin add satysfi-$(PACKAGE_NAME).opam "file://$(PWD)" -y
	satyrographos opam build -name $(PACKAGE_NAME)-docs