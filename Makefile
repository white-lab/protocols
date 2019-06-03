
.DEFAULT_GOAL := all
SRC  = $(wildcard **/*.md)
LEGACY = $(wildcard legacy/*.md)
MERGED_PDFS = protocols/full-protocols.pdf protocols/legacy-protocols.pdf
PDFS = $(SRC:.md=.pdf)


%.pdf: %.md
	md-to-pdf --config-file build/md_to_pdf.json $< $@

protocols/legacy-protocols.pdf: $(LEGACY)
	rm -f protocols/legacy-protocols.md
	for file in legacy/*.md ; do \
		echo $$file ; \
		cat $$file >> protocols/legacy-protocols.md ; \
		echo '<div style="page-break-after: always;"></div>' >> protocols/legacy-protocols.md ; \
		echo >> protocols/legacy-protocols.md ; \
	done
	md-to-pdf --config-file build/md_to_pdf.json protocols/legacy-protocols.md $@
	rm -f protocols/legacy-protocols.md

protocols/full-protocols.pdf: $(SRC)
	rm -f protocols/full-protocols.md
	for file in protocols/*.md mass_spec/**/*.md protocols/**/*.md cell_culture/**/*.md ; do \
		echo $$file ; \
		cat $$file >> protocols/full-protocols.md ; \
		echo '<div style="page-break-after: always;"></div>' >> protocols/full-protocols.md ; \
		echo >> protocols/full-protocols.md ; \
	done
	md-to-pdf --config-file build/md_to_pdf.json protocols/full-protocols.md $@
	rm -f protocols/full-protocols.md

protocols.zip: $(MERGED_PDFS)
	zip -r protocols.zip $(MERGED_PDFS)

protocols.tar.gz: $(MERGED_PDFS)
	tar -cf protocols.tar.gz $(MERGED_PDFS)

all: $(PDFS) protocols.zip protocols.tar.gz

clean:
	rm -f **/*.pdf
	rm -f **/*.zip
	rm -f **/*.tar.gz
