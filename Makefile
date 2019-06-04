
.DEFAULT_GOAL := all
SRC  = $(wildcard **/*.md)
LEGACY = $(wildcard legacy/*.md)
MERGED_PDFS = protocols/full-protocols.pdf protocols/legacy-protocols.pdf
PDFS = $(SRC:.md=.pdf)


%.pdf: %.md
	md-to-pdf --config-file build/md_to_pdf.json $< $@

protocols/Legacy_Protocols.pdf: $(LEGACY)
	rm -f protocols/Legacy_Protocols.md
	for file in legacy/*.md ; do \
		echo $$file ; \
		cat $$file >> protocols/Legacy_Protocols.md ; \
		echo '<div style="page-break-after: always;"></div>' >> protocols/Legacy_Protocols.md ; \
		echo >> protocols/Legacy_Protocols.md ; \
	done
	md-to-pdf --config-file build/md_to_pdf.json protocols/Legacy_Protocols.md $@
	rm -f protocols/Legacy_Protocols.md

protocols/Full_Protocols.pdf: $(SRC)
	rm -f protocols/full-protocols.md
	for file in protocols/*.md mass_spec/**/*.md protocols/**/*.md cell_culture/**/*.md ; do \
		echo $$file ; \
		cat $$file >> protocols/Full_Protocols.md ; \
		echo '<div style="page-break-after: always;"></div>' >> protocols/Full_Protocols.md ; \
		echo >> protocols/Full_Protocols.md ; \
	done
	md-to-pdf --config-file build/md_to_pdf.json protocols/Full_Protocols.md $@
	rm -f protocols/Full_Protocols.md

protocols.zip: $(MERGED_PDFS)
	zip -r protocols.zip $(MERGED_PDFS)

protocols.tar.gz: $(MERGED_PDFS)
	tar -cf protocols.tar.gz $(MERGED_PDFS)

all: $(PDFS) protocols.zip protocols.tar.gz

clean:
	rm -f **/*.pdf
	rm -f **/*.zip
	rm -f **/*.tar.gz
