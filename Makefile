PACKAGE_NAME=fonts-theano

.PHONY: all
.PHONY: doc

all:
	:

doc: doc-fonts-theano-ja.pdf

doc-fonts-theano-ja.pdf: doc-$(PACKAGE_NAME)-ja.saty satysfi-$(PACKAGE_NAME).opam fonts.satysfi-hash Satyristes
	opam pin add satysfi-$(PACKAGE_NAME).opam "file://$(PWD)" -y
	satyrographos opam build -name $(PACKAGE_NAME)-doc
