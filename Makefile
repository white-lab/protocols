
.DEFAULT_GOAL := all
SRC = $(wildcard protocols/**/*.md)
LEGACY = $(wildcard protocols/legacy/*.md)
PDFS = $(SRC:.md=.pdf)

MS_MD_PATH = protocols/Proteomics_Protocols.md
WET_MD_PATH = protocols/Wet_Lab_Protocols.md
CELL_MD_PATH = protocols/Cell_Culture_Protocols.md
FULL_MD_PATH = protocols/Full_Protocols.md
LEGACY_MD_PATH = protocols/Legacy_Protocols.md

MS_FILES = protocols/mass_spec/Proteomics_Workflow.md $(wildcard protocols/mass_spec/**/*.md) protocols/mass_spec/Peptide_Standards.md

WET_FILES = $(wildcard protocols/wet_lab/*.md) $(wildcard protocols/wet_lab/**/*.md)

CELL_FILES = $(wildcard protocols/cell_culture/*.md) $(wildcard protocols/cell_culture/**/*.md)

FULL_FILES = $(MS_FILES) $(WET_FILES) $(CELL_FILES)
LEGACY_FILES = $(wildcard protocols/legacy/*.md)

MERGED_MDS = $(CELL_MD_PATH) $(MS_MD_PATH) $(WET_MD_PATH) $(FULL_MD_PATH) $(LEGACY_MD_PATH)

MERGED_PDFS = $(MERGED_MDS:.md=.pdf)
MD_TO_PDF_JSON = md_to_pdf.json


%.pdf: %.md
		md-to-pdf --config-file md_to_pdf.json $< $@

protocols/Proteomics_Protocols.md: $(MS_FILES)
		rm -f $@
		for file in $^ ; do \
				cat $$file >> $@ ; \
				echo '<div style="page-break-after: always;"></div>' >> $@ ; \
				echo >> $@ ; \
		done

protocols/Wet_Lab_Protocols.md: $(WET_FILES)
		rm -f $@
		for file in $^ ; do \
				cat $$file >> $@ ; \
				echo '<div style="page-break-after: always;"></div>' >> $@ ; \
				echo >> $@ ; \
		done

protocols/Cell_Culture_Protocols.md: $(CELL_FILES)
		rm -f $@
		for file in $^ ; do \
				cat $$file >> $@ ; \
				echo '<div style="page-break-after: always;"></div>' >> $@ ; \
				echo >> $@ ; \
		done

protocols/Full_Protocols.md: $(FULL_FILES)
		rm -f $@
		for file in $^ ; do \
				cat $$file >> $@ ; \
				echo '<div style="page-break-after: always;"></div>' >> $@ ; \
				echo >> $@ ; \
		done

protocols/Legacy_Protocols.md: $(LEGACY_FILES)
		rm -f $@
		for file in $^ ; do \
				cat $$file >> $@ ; \
				echo '<div style="page-break-after: always;"></div>' >> $@ ; \
				echo >> $@ ; \
		done

all: $(PDFS) $(MERGED_PDFS)
		echo $(MERGED_MDS)

clean:
		rm -f **/*.pdf
		rm -f **/*.zip
		rm -f **/*.tar.gz
		rm -f $(MERGED_MDS)
