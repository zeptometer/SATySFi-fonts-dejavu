PREFIX=/usr/local
LIBDIR=$(PREFIX)/share/satysfi
PACKAGE_NAME=satysfi-fonts-theano
PACKAGE_DIR=$(LIBDIR)/$(PACKAGE_NAME)

.PHONY: all
.PHONY: doc install uninstall

all:
	:

doc: doc-fonts-theano-ja.pdf

%.pdf: %.saty
	satysfi $<

install:
	[ -d theano ] || ( echo "Font directory doesn't exist. Please install this package with OPAM" ; exit 1)
	install -d "$(PACKAGE_DIR)/fonts"
	install -m 644 theano/* $(PACKAGE_DIR)/fonts
	install -d "$(PACKAGE_DIR)/hash"
	install -m 644 *.satysfi-hash "$(PACKAGE_DIR)/hash"

uninstall:
	rm -rf "$(PACKAGE_DIR)"
