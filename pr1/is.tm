%!TeX root=main.tex

\section*{Función \maximain{is}}

La función de maxima \maximain{is} devuelve
\maximain{true} o \maximain{false} dependiendo
de si una expresión o ecuación es verdadera
o falsa, respectivamente.

%ei is(2<1);
%do

%ei is(1<2);
%do

%ei is(log(%e)=1);
%do

Hay que tener en cuenta que maxima hace uso del
cálculo simbólico y considera la igualdad no por
sus valores sino por sus expresiones.
Por ejemplo la siguiente ecuación es falsa
cuando se considera como expresiones.

%ei is(log(5)-log(7)=log(5/7));
%do

Aunque realmente la igualdad anterior es cierta
matemáticamente, ya que los valores de cada
lado de la igualdad son los mismos.
A continuación una muestra (no es una prueba
pero ayuda a verlo).

%ei float(log(5)-log(7));
%do

%ei float(log(5/7));
%do
