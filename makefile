
all: awk-pdf csvkit-pdf


csvkit-pdf:
	pandoc csvkit/docs/csvkit-01-introduction-to-csvkit.md \
		csvkit/docs/csvkit-02-setup-and-first-steps.md \
		csvkit/docs/csvkit-03-basic-operations.md \
		csvkit/docs/csvkit-04-joining-and-combing-data.md \
		csvkit/docs/csvkit-05-data-cleaning-and-transformation.md \
		--output csvkit-manual.pdf \
		--from markdown \
		--template "./templates/manual-template.tex" \
		--toc \
		--variable book=True \
		--top-level-division="chapter" \
		--listings \
		--variable titlepage=True \
		--variable titlepage-color="EEEEEE" \
		--variable titlepage-rule-height=8 \
		--variable titlepage-background="./figures/titlepage-background-template.pdf" \
		--variable page-background="./figures/page-background-template.pdf" \
		--variable page-background-opacity=0.8 \
		--variable footer-right="Page \thepage" \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--variable institute="Data Science Manager at Rubió Metabolomics" \
		--filter pandoc-latex-environment \
		--metadata=title:"csv-kit Manual" \
		--metadata=author:"Ibon Martínez-Arranz"

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
		--template "./templates/manual-template.tex" \
		--toc \
		--variable book=True \
		--top-level-division="chapter" \
		--listings \
		--variable titlepage=True \
		--variable titlepage-color="EEEEEE" \
		--variable titlepage-rule-height=8 \
		--variable titlepage-background="./figures/titlepage-background-template.pdf" \
		--variable page-background="./figures/page-background-template.pdf" \
		--variable page-background-opacity=0.8 \
		--variable footer-right="Page \thepage" \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--variable institute="Data Science Manager at Rubió Metabolomics" \
		--filter pandoc-latex-environment \
		--metadata=title:"AWK Manual" \
		--metadata=author:"Ibon Martínez-Arranz"

# https://github.com/Wandmalfarbe/pandoc-latex-template
# https://pypi.org/project/pandoc-latex-environment/
# https://pandoc-latex-tip.readthedocs.io/en/latest/index.html
# https://pandoc-latex-environment.readthedocs.io/en/latest/
