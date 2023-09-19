main=main

maintex=$(main).tex
maindvi=$(main).dvi
mainpdf=$(main).pdf
mainps=$(main).ps

tm=tm
tw=tw

tmtexs=funciones.tex lim.tex cont.tex der.tex \
	taylor.tex estudio.tex
twtexs=
texs=

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
