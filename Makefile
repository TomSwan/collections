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
	cp index.html build
	rm -f index.html

clean:
	rm -v -f ${targets}
	rm -rf build
