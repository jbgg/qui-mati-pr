main=main

maintex=$(main).tex
maindvi=$(main).dvi
mainpdf=$(main).pdf
mainps=$(main).ps

tm=tm
tw=tw

tmtexs=primercontacto.tex variables.tex expresiones.tex \
	resolucion.tex num.tex func.tex complejos.tex \
	is.tex
twtexs=
texs=instalacion.tex

.SUFFIXES: .pdf .ps .tm .tw .tex

all: $(mainpdf)

$(mainpdf) $(mainps): $(tmtexs) $(twtexs) $(texs)

.tex.pdf:
	latexmk -pdf $<

.tex.ps:
	latexmk -ps $<

.tm.tex:
	$(tm) < $< > $@

.tw.tex:
	$(tw) < $< > $@

clean:
	latexmk -c
	rm -rf $(maindvi) $(mainpdf) $(mainps) $(tmtexs) $(twtexs)
