
.DEFAULT_GOAL := all
SRC  = $(wildcard **/*.md)
LEGACY = $(wildcard legacy/*.md)
PDFS = $(SRC:.md=.pdf)

MS_MD_PATH = protocols/Mass_Spec_Protocols.md
WET_MD_PATH = protocols/Wet_Lab_Protocols.md
CELL_MD_PATH = protocols/Cell_Culture_Protocols.md
FULL_MD_PATH = protocols/Full_Protocols.md
LEGACY_MD_PATH = protocols/Legacy_Protocols.md

MS_FILES = mass_spec/Proteomics_Workflow.md $(wildcard mass_spec/**/*.md) mass_spec/Peptide_Standards.md
WET_FILES = $(wildcard protocols/*.md) $(wildcard protocols/**/*.md)
CELL_FILES = $(wildcard cell_culture/*.md) $(wildcard cell_culture/**/*.md)
FULL_FILES = $(MS_FILES) $(WET_FILES) $(CELL_FILES)
LEGACY_FILES = $(wildcard legacy/*.md)

MERGED_MDS = $(CELL_MD_PATH) $(MS_MD_PATH) $(WET_MD_PATH) $(FULL_MD_PATH) $(LEGACY_MD_PATH)
MERGED_PDFS = $(MERGED_MDS:.md=.pdf)
MD_TO_PDF_JSON = md_to_pdf.json


%.pdf: %.md
	md-to-pdf --config-file md_to_pdf.json $< $@

protocols/Mass_Spec_Protocols.pdf: $(MS_FILES)
	rm -f $(MS_MD_PATH)
	for file in $(MS_FILES) ; do \
		cat $$file >> $(MS_MD_PATH) ; \
		echo '<div style="page-break-after: always;"></div>' >> $(MS_MD_PATH) ; \
		echo >> $(MS_MD_PATH) ; \
	done
	md-to-pdf --config-file $(MD_TO_PDF_JSON) $(MS_MD_PATH) $@
	rm -f $(MS_MD_PATH)

protocols/Wet_Lab_Protocols.pdf: $(WET_FILES)
	rm -f $(WET_MD_PATH)
	for file in $(WET_FILES) ; do \
		cat $$file >> $(WET_MD_PATH) ; \
		echo '<div style="page-break-after: always;"></div>' >> $(WET_MD_PATH) ; \
		echo >> $(WET_MD_PATH) ; \
	done
	md-to-pdf --config-file $(MD_TO_PDF_JSON) $(WET_MD_PATH) $@
	rm -f $(WET_MD_PATH)

protocols/Cell_Culture_Protocols.pdf: $(CELL_FILES)
	rm -f $(CELL_MD_PATH)
	for file in $(CELL_FILES) ; do \
		cat $$file >> $(CELL_MD_PATH) ; \
		echo '<div style="page-break-after: always;"></div>' >> $(CELL_MD_PATH) ; \
		echo >> $(CELL_MD_PATH) ; \
	done
	md-to-pdf --config-file $(MD_TO_PDF_JSON) $(CELL_MD_PATH) $@
	rm -f $(CELL_MD_PATH)

protocols/Full_Protocols.pdf: $(FULL_FILES)
	rm -f $(FULL_MD_PATH)
	for file in $(FULL_FILES) ; do \
		cat $$file >> $(FULL_MD_PATH) ; \
		echo '<div style="page-break-after: always;"></div>' >> $(FULL_MD_PATH) ; \
		echo >> $(FULL_MD_PATH) ; \
	done
	md-to-pdf --config-file $(MD_TO_PDF_JSON) $(FULL_MD_PATH) $@
	rm -f $(FULL_MD_PATH)

protocols/Legacy_Protocols.pdf: $(LEGACY_FILES)
	rm -f $(LEGACY_MD_PATH)
	for file in $(LEGACY_FILES) ; do \
		cat $$file >> $(LEGACY_MD_PATH) ; \
		echo '<div style="page-break-after: always;"></div>' >> $(LEGACY_MD_PATH) ; \
		echo >> $(LEGACY_MD_PATH) ; \
	done
	md-to-pdf --config-file $(MD_TO_PDF_JSON) $(LEGACY_MD_PATH) $@
	rm -f $(LEGACY_MD_PATH)

protocols.zip: $(MERGED_PDFS)
	zip -r protocols.zip $(MERGED_PDFS)

protocols.tar.gz: $(MERGED_PDFS)
	tar -cf protocols.tar.gz $(MERGED_PDFS)

all: $(PDFS) protocols.zip protocols.tar.gz

clean:
	rm -f **/*.pdf
	rm -f **/*.zip
	rm -f **/*.tar.gz
