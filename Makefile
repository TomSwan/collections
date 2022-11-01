# Makefile

targets=collections.html

all: ${targets}

%.html : %.adoc collections.txt collections.adoc
	rm -rf build
	mkdir build
	asciidoctor -D build -s $<
	asciidoctor $<

clean:
	rm -v -f ${targets}
	rm -rf build
