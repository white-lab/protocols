
SRC = $(wildcard **/*.md)

PDFS=$(SRC:.md=.pdf)

%.pdf: %.md
	markdown-pdf -o $@ $<

full-protocols:
	rm -f protocols/full-protocols.md
	for file in protocols/*.md ; do \
		cat $$file >> protocols/full-protocols.md ; \
		echo '<div style="page-break-after: always;"></div>' >> protocols/full-protocols.md ; \
		echo >> protocols/full-protocols.md ; \
	done
	markdown-pdf -o protocols/full-protocols.pdf protocols/full-protocols.md
	rm protocols/full-protocols.md

all: $(PDFS) full-protocols

clean:
	rm -f **/*.pdf
