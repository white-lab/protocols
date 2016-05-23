
.DEFAULT_GOAL := all
SRC  = $(wildcard **/*.md)
PDFS = $(SRC:.md=.pdf) protocols/full-protocols.pdf
DATE = $(shell date "+%B %d %Y (%F)")

runnings.js:
	echo 'exports.header = { height: "1cm", contents: function(pageNum, numPages) { return "<span style=\"float:right; color:#606060; font-size:0.6em\">$(DATE)</span>" } }' > runnings.js
	echo 'exports.footer = { height: "1cm", contents: function(pageNum, numPages) { return "<span style=\"float:right; color:#606060; font-size:0.6em\">" + pageNum + " / " + numPages + "</span>" } }' >> runnings.js

%.pdf: %.md runnings.js
	markdown-pdf --runnings-path runnings.js -o $@ $<

protocols/full-protocols.pdf: $(SRC) runnings.js
	rm -f protocols/full-protocols.md
	for file in protocols/*.md ; do \
		cat $$file >> protocols/full-protocols.md ; \
		echo '<div style="page-break-after: always;"></div>' >> protocols/full-protocols.md ; \
		echo >> protocols/full-protocols.md ; \
	done
	markdown-pdf --runnings-path runnings.js -o protocols/full-protocols.pdf protocols/full-protocols.md
	rm -f protocols/full-protocols.md

protocols.zip: $(PDFS)
	zip -r protocols.zip $(PDFS)

protocols.tar.gz: $(PDFS)
	tar -cf protocols.tar.gz $(PDFS)

all: protocols.zip protocols.tar.gz
	rm -f runnings.js

clean:
	rm -f runnings.js
	rm -f **/*.pdf
	rm -f **/*.zip
	rm -f **/*.tar.gz
