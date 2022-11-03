# Makefile

project=collections
compiler=asciidoctor
blddir=~/sites/tomswan/layouts/partials/pub
pubdir=~/sites/tomswan/static/pub/collections
imagedir=image
datadir=data

targets=$(project).html

all: ${targets}

%.html : %.adoc $(project).txt $(project).adoc
	$(compiler) -D $(blddir) -s $<
	$(compiler) $<
	rsync -avz $(datadir)/ $(pubdir)/$(datadir)
	rsync -avz $(imagedir)/ $(pubdir)/$(imagedir)

clean:
	rm -v -f ${targets}
