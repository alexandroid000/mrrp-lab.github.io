SHELL := /bin/zsh
BUNDLE := bundle
JEKYLL := $(BUNDLE) exec jekyll

default: build

build: install
	$(JEKYLL) build
	cd /web/faculty/nillesa2/
	cp -r _site/* /web/faculty/nillesa2/
	echo "Updated at /web/faculty/nillesa2"

install:
	$(BUNDLE) config set --local path '/home/nillesa2/.local/share/gem'
	$(BUNDLE) install
