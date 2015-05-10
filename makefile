LATEX = pdflatex
TARGET = monografia
BIBTEX = bibtex

all: $(TARGET).pdf

$(TARGET).pdf: $(TARGET).tex
	$(LATEX) $< -o $@ && \
	$(BIBTEX) $(TARGET).aux && \
	$(LATEX) $< -o $@ && \
	$(LATEX) $< -o $@


clean:
	rm -f *.toc *.lof *.lot *.bbl *.blg *.log *.aux *.las *.lsb
#	rm -f $(TARGET).pdf
