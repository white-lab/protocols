
.DEFAULT_GOAL := all
SRC  = $(wildcard protocols/**/*.md)
LEGACY = $(wildcard protocols/legacy/*.md)
PDFS = $(SRC:.md=.pdf)

MS_MD_PATH = protocols/Proteomics_Protocols.md
WET_MD_PATH = protocols/Wet_Lab_Protocols.md
CELL_MD_PATH = protocols/Cell_Culture_Protocols.md
FULL_MD_PATH = protocols/Full_Protocols.md
LEGACY_MD_PATH = protocols/Legacy_Protocols.md

define MS_FILES =
protocols/mass_spec/Proteomics_Workflow.md
$(wildcard protocols/mass_spec/**/*.md)
protocols/mass_spec/Peptide_Standards.md
endef

define WET_FILES =
$(wildcard protocols/wet_lab/*.md)
$(wildcard protocols/wet_lab/**/*.md)
endef

define CELL_FILES =
$(wildcard protocols/cell_culture/*.md)
$(wildcard protocols/cell_culture/**/*.md)
endef

FULL_FILES = $(MS_FILES) $(WET_FILES) $(CELL_FILES)
LEGACY_FILES = $(wildcard protocols/legacy/*.md)

define MERGED_MDS =
$(CELL_MD_PATH)
$(MS_MD_PATH)
$(WET_MD_PATH)
$(FULL_MD_PATH)
$(LEGACY_MD_PATH)
endef

MERGED_PDFS = $(MERGED_MDS:.md=.pdf)
MD_TO_PDF_JSON = md_to_pdf.json


%.pdf: %.md
	md-to-pdf --config-file md_to_pdf.json $< $@

protocols/Proteomics_Protocols.pdf: $(MS_FILES)
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

all: $(PDFS)

clean:
	rm -f **/*.pdf
	rm -f **/*.zip
	rm -f **/*.tar.gz
