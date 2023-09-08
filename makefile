
# Uso de Variables
# https://ftp.gnu.org/old-gnu/Manuals/make-3.79.1/html_chapter/make_6.html

TEMPLATE = "./templates/manual-template.tex"
TOP_LEVEL_DIVISION = "chapter"
TITLEPAGE_COLOR = "EEEEEE"
TITLEPAGE_RULE_HEIGHT = 8
TITLEPAGE_BACKGROUND = "./figures/titlepage-background-template.pdf"
PAGE_BACKGROUND = "./figures/page-background-template.pdf"
PAGE_BACKGROUND_OPACITY = 0.8
FOOTER_RIGHT = "Page \thepage"
INSTITUTE = "Data Science Manager at Rubió Metabolomics"
AUTHOR = "Ibon Martínez-Arranz"

all: awk-pdf csvkit-pdf jq-pdf nbconvert-pdf

jq-pdf:
	pandoc jq/docs/jq-01-introduction-to-jq.md \
		jq/docs/jq-02-instalation.md \
		jq/docs/jq-03-basic-concepts.md \
		jq/docs/jq-04-basic-use.md \
		--output jq-manual.pdf \
		--from markdown \
		--template $(TEMPLATE) \
		--toc \
		--variable book=True \
		--top-level-division $(TOP_LEVEL_DIVISION) \
		--listings \
		--variable titlepage=True \
		--variable titlepage-color=$(TITLEPAGE_COLOR) \
		--variable titlepage-rule-height=$(TITLEPAGE_RULE_HEIGHT) \
		--variable titlepage-background=$(TITLEPAGE_BACKGROUND) \
		--variable page-background=$(PAGE_BACKGROUND) \
		--variable page-background-opacity=$(PAGE_BACKGROUND_OPACITY) \
		--variable footer-right=$(FOOTER_RIGHT) \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--variable institute=$(INSTITUTE) \
		--filter pandoc-latex-environment \
		--metadata=title:"jq Manual" \
		--metadata=author:$(AUTHOR)

csvkit-pdf:
	pandoc csvkit/docs/csvkit-01-introduction-to-csvkit.md \
		csvkit/docs/csvkit-02-setup-and-first-steps.md \
		csvkit/docs/csvkit-03-basic-operations.md \
		csvkit/docs/csvkit-04-joining-and-combing-data.md \
		csvkit/docs/csvkit-05-data-cleaning-and-transformation.md \
		--output csvkit-manual.pdf \
		--from markdown \
		--template $(TEMPLATE) \
		--toc \
		--variable book=True \
		--top-level-division $(TOP_LEVEL_DIVISION) \
		--listings \
		--variable titlepage=True \
		--variable titlepage-color=$(TITLEPAGE_COLOR) \
		--variable titlepage-rule-height=$(TITLEPAGE_RULE_HEIGHT) \
		--variable titlepage-background=$(TITLEPAGE_BACKGROUND) \
		--variable page-background=$(PAGE_BACKGROUND) \
		--variable page-background-opacity=$(PAGE_BACKGROUND_OPACITY) \
		--variable footer-right=$(FOOTER_RIGHT) \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--variable institute=$(INSTITUTE) \
		--filter pandoc-latex-environment \
		--metadata=title:"csv-kit Manual" \
		--metadata=author:$(AUTHOR)

awk-pdf:
	pandoc awk/docs/awk-01-introduction-to-awk.md \
		awk/docs/awk-02-awk-basics.md \
		awk/docs/awk-03-manipulation-fields-and-records.md \
		awk/docs/awk-04-data-filtering-and-transformation.md \
		awk/docs/awk-05-work-with-external-files.md \
		awk/docs/awk-06-advanced-awk-scripts.md \
		awk/docs/awk-07-practical-uses-cases.md \
		awk/docs/awk-08-resources-and-tips.md \
		--output awk-manual.pdf \
		--from markdown \
		--template $(TEMPLATE) \
		--toc \
		--variable book=True \
		--top-level-division $(TOP_LEVEL_DIVISION) \
		--listings \
		--variable titlepage=True \
		--variable titlepage-color=$(TITLEPAGE_COLOR) \
		--variable titlepage-rule-height=$(TITLEPAGE_RULE_HEIGHT) \
		--variable titlepage-background=$(TITLEPAGE_BACKGROUND) \
		--variable page-background=$(PAGE_BACKGROUND) \
		--variable page-background-opacity=$(PAGE_BACKGROUND_OPACITY) \
		--variable footer-right=$(FOOTER_RIGHT) \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--variable institute=$(INSTITUTE) \
		--filter pandoc-latex-environment \
		--metadata=title:"AWK Manual" \
		--metadata=author:$(AUTHOR)

nbconvert-pdf:
	pandoc nbconvert/docs/nbconvert-01-introduction.md \
		nbconvert/docs/nbconvert-02-instalation.md \
		nbconvert/docs/nbconvert-03-basic-use.md \
		nbconvert/docs/nbconvert-04-advanced-options.md \
		nbconvert/docs/nbconvert-05-integration-with-jupyter.md \
		nbconvert/docs/nbconvert-06-bug-fix.md \
		nbconvert/docs/nbconvert-07-appendix.md \
		nbconvert/docs/nbconvert-08-glossary-and-bibliography.md \
		--output nbconvert-manual.pdf \
		--from markdown \
		--template $(TEMPLATE) \
		--toc \
		--variable book=True \
		--top-level-division $(TOP_LEVEL_DIVISION) \
		--listings \
		--variable titlepage=True \
		--variable titlepage-color=$(TITLEPAGE_COLOR) \
		--variable titlepage-rule-height=$(TITLEPAGE_RULE_HEIGHT) \
		--variable titlepage-background=$(TITLEPAGE_BACKGROUND) \
		--variable page-background=$(PAGE_BACKGROUND) \
		--variable page-background-opacity=$(PAGE_BACKGROUND_OPACITY) \
		--variable footer-right=$(FOOTER_RIGHT) \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--variable institute=$(INSTITUTE) \
		--filter pandoc-latex-environment \
		--metadata=title:"nbconvert Manual" \
		--metadata=author:$(AUTHOR)

# https://github.com/Wandmalfarbe/pandoc-latex-template
# https://pypi.org/project/pandoc-latex-environment/
# https://pandoc-latex-tip.readthedocs.io/en/latest/index.html
# https://pandoc-latex-environment.readthedocs.io/en/latest/
