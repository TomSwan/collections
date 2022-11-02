# Makefile

project=collections
compiler=asciidoctor
blddir=~/sites/tomswan/layouts/partials/pub

targets=$(project).html

all: ${targets}

%.html : %.adoc $(project).txt $(project).adoc
	$(compiler) -D $(blddir) -s $<
	$(compiler) $<

clean:
	rm -v -f ${targets}
