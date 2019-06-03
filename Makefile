
.DEFAULT_GOAL := all
SRC  = $(wildcard **/*.md)
PDFS = $(SRC:.md=.pdf) protocols/full-protocols.pdf


%.pdf: %.md
	md-to-pdf --config-file build/md_to_pdf.json $< $@

protocols/full-protocols.pdf: $(SRC)
	rm -f protocols/full-protocols.md
	for file in protocols/**/*.md cell_culture/**/*.md ; do \
		cat $$file >> protocols/full-protocols.md ; \
		echo '<div style="page-break-after: always;"></div>' >> protocols/full-protocols.md ; \
		echo >> protocols/full-protocols.md ; \
	done
	md-to-pdf --config-file build/md_to_pdf.json protocols/full-protocols.md $@
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
