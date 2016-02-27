
.DEFAULT_GOAL := all
SRC  = $(wildcard **/*.md)
PDFS = $(SRC:.md=.pdf) protocols/full-protocols.pdf

%.pdf: %.md
	markdown-pdf -o $@ $<

protocols/full-protocols.pdf: $(SRC)
	rm -f protocols/full-protocols.md
	for file in protocols/*.md ; do \
		cat $$file >> protocols/full-protocols.md ; \
		echo '<div style="page-break-after: always;"></div>' >> protocols/full-protocols.md ; \
		echo >> protocols/full-protocols.md ; \
	done
	markdown-pdf -o protocols/full-protocols.pdf protocols/full-protocols.md
	rm -f protocols/full-protocols.md

protocols.zip: $(PDFS)
	zip -r protocols.zip $(PDFS)

protocols.tar.gz: $(PDFS)
	tar -cf protocols.tar.gz $(PDFS)

all: protocols.zip protocols.tar.gz

clean:
	rm -f **/*.pdf
	rm -f **/*.zip
	rm -f **/*.tar.gz
