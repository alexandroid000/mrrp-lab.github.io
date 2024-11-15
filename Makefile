SHELL := /bin/zsh
BUNDLE := bundle
JEKYLL := $(BUNDLE) exec jekyll

install:
	$(BUNDLE) config set --local path '/home/nillesa2/.local/share/gem'
	$(BUNDLE) install

build:
	$(JEKYLL) build
	cd /web/faculty/nillesa2/
	cp -r _site/* /web/faculty/nillesa2/
