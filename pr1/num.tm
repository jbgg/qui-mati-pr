%!TeX root=main.tex

\section*{Tipos de números}

Como norma general existen dos tipos de números
en Maxima, los valores exactos y los números con
decimales.
Por defecto maxima siempre va a trabajar con valores
o expresiones exactas.
Por ejemplo con el valor de $\log\left(\frac{3}{5}\right)$.

%ei log(3/5);
%do

Para saber su valor numérico aproximado se puede usar
\maximain{float}.

%ei float(log(3/5));
%do

O usar \maximain{,numer} al final del cálculo.

%ei log(3/5),numer;
%do
