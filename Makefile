
.DEFAULT_GOAL := all
SRC  = $(wildcard **/*.md)
LEGACY = $(wildcard legacy/*.md)
MERGED_PDFS = protocols/Full_Protocols.pdf protocols/Legacy_Protocols.pdf
PDFS = $(SRC:.md=.pdf)
FULL_MD_PATH = protocols/Full_Protocols.md
LEGACY_MD_PATH = protocols/Legacy_Protocols.md
MD_TO_PDF_JSON = md_to_pdf.json


%.pdf: %.md
	md-to-pdf --config-file md_to_pdf.json $< $@

protocols/Legacy_Protocols.pdf: $(LEGACY)
	rm -f $(LEGACY_MD_PATH)
	for file in legacy/*.md ; do \
		echo $$file ; \
		cat $$file >> $(LEGACY_MD_PATH) ; \
		echo '<div style="page-break-after: always;"></div>' >> $(LEGACY_MD_PATH) ; \
		echo >> $(LEGACY_MD_PATH) ; \
	done
	md-to-pdf --config-file $(MD_TO_PDF_JSON) $(LEGACY_MD_PATH) $@
	rm -f $(LEGACY_MD_PATH)

protocols/Full_Protocols.pdf: $(SRC)
	rm -f $(FULL_MD_PATH)
	for file in protocols/*.md protocols/**/*.md mass_spec/*.md mass_spec/**/*.md cell_culture/*.md cell_culture/**/*.md ; do \
		echo $$file ; \
		cat $$file >> $(FULL_MD_PATH) ; \
		echo '<div style="page-break-after: always;"></div>' >> $(FULL_MD_PATH) ; \
		echo >> $(FULL_MD_PATH) ; \
	done
	md-to-pdf --config-file $(MD_TO_PDF_JSON) $(FULL_MD_PATH) $@
	rm -f $(FULL_MD_PATH)

protocols.zip: $(MERGED_PDFS)
	zip -r protocols.zip $(MERGED_PDFS)

protocols.tar.gz: $(MERGED_PDFS)
	tar -cf protocols.tar.gz $(MERGED_PDFS)

all: $(PDFS) protocols.zip protocols.tar.gz

clean:
	rm -f **/*.pdf
	rm -f **/*.zip
	rm -f **/*.tar.gz
