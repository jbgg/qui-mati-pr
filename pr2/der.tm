%!TeX root=main.tex

\section*{Derivada de una función}

Para calcular la derivada de una función
se utiliza el comando \maximain{diff},
se usa de la siguiente manera

%ei diff(x^2+1,x);
%do

Por ejemplo vamos a trabajar con la función
\begin{equation*}
f(x)=\frac{\sqrt{x}}{1+x^2}.
\end{equation*}

Primero definimos la función, guardando
la expresión en una variable.

%ei f:sqrt(x)/(1+x^2);
%do

Y a continuación se puede calcular la derivada,
que se guardará en una variable.

%ei df:diff(f,x);
%do

En realidad se puede simplificar un poco la expresión
de la derivada aplicando la función \maximain{factor}.

%ei df:factor(diff(f,x));
%do

Si ahora se quiere calcular la derivada en algún valor,
por ejemplo para calcular $f'(4)$, se puede hacer lo
siguiente.

%ei ev(df,x=4);
%do

Si se quiere calcular $f''(x)$ se puede hacer de dos
maneras.

La primera manera sería usar la primera derivada, ya calculada.

%ei d2f:factor(diff(df,x));
%do

O también se puede calcular directamente usando la función $f(x)$.

%ei d2f:factor(diff(f,x,2));
%do

Para calcular, por ejemplo, $f''(9)$, se podrá hacer de forma
parecida a lo anterior.

%ei ev(d2f,x=9);
%do

\section*{Cálculo de extremos}

Para calcular extremos de una función se puede combinar lo
visto anteriormente.

Por ejemplo consideremos la función $f(x)=x^2+3x-1$,
en el intervalo $[-2,0]$.

Definimos primero la función, y se calculan las derivadas.

%ei f:x^2+3*x-1;
%do

%ei df:diff(f,x);
%do

%ei d2f:diff(f,x,2);
%do

A continuación se resuelve la ecuación $f'(x)=0$.

%ei solve(df=0,x);
%do

Para saber si es un máximo o mínimo local se evaluará
la segunda derivada en $x=-3/2$.

%ei ev(d2f,x=-3/2);
%do

Ya que $f''(-3/2)>0$ se trata de un mínimo local.
Para calcular los extremos absolutos habrá que comprobar
los valores de la función $f$ en $x=-3/2$ y en los
extremos del intervalo $[-2,0]$.

%ei ev(f,x=-3/2),numer;
%do

%ei ev(f,x=-2);
%do

%ei ev(f,x=0);
%do

Por tanto en $x=0$ se encuentra un máximo absoluto,
y en $x=-3/2$ se encuentra un mínimo absoluto.

Se puede graficar la función en el intervalo $[-2,0]$
con el comando \maximain{wxplot2d} de la siguiente manera.

%ei wxplot2d(f,[x,-2,0]);
%c plot2d(f,[x,-2,0], [pdf_file, "./derf.pdf"])$
\begin{maximat}
 \hfill
 \includegraphics[width=.5\textwidth]{derf.pdf}
 \hfill
\end{maximat}

