# Makefile

targets=index.html

all: ${targets}

%.html : %.adoc index.txt index.adoc
	asciidoctor $<
	rm -rf build
	mkdir build
	cp -r css build
	cp -r data build
	cp -r image build
	cp -r pdf build
	cp -r source build
	cp index.html build
	cp index.txt build
	cp LICENSE.txt build

clean:
	rm -v -f ${targets}
	rm -rf build
