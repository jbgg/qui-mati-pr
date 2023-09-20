%!TeX root=main.tex

\section*{Límites}

%c f(x):=1/(%e^x-1)$

El cálculo de límites con Maxima se realiza de la siguiente forma:
\begin{center}
 \maximain{limit(función, x, $\text{x}_\text{0}$)}
\end{center}
donde $x_0$ puede ser un número,
$+\infty$ o $-\infty$.
%
En Maxima $+\infty$ se escribe como
\maximain{inf}
y $-\infty$ como
\maximain{minf}

Para calcular
\begin{align*}
\lim_{x \to +\infty}\frac{1}{e^x-1}
 \qquad \text{ y } \qquad
\lim_{x \to -\infty}\frac{1}{e^x-1},
\end{align*}
como ya tenemos definida la función, escribimos:

%ei limit(f(x),x,inf);
%do

%ei limit(f(x),x,minf);
%do

Si queremos calcular
\begin{align*}
 \lim_{x \to 0}\frac{\sen(x)}{x},
\end{align*}
no es necesario definir previamente la función,
sino que podemos escribir:

%ei limit(sin(x)/x,x,0);
%do

Para calcular
\begin{equation*}
\lim_{x\to0} \frac{1}{e^x-1}
\end{equation*}
se hace lo siguiente
(recuerde que la función
$f$ se definió anteriormente).

%ei limit(f(x),x,0);
%do

¿Qué significa $infinity$?
Pues significa $\pm\infty$.

Comprobemos los límites laterales.

%ei limit(f(x),x,0,minus);
%do

Lo anterior es el resultado del límite
\begin{equation*}
\lim_{x\to0^-} f(x).
\end{equation*}

%ei limit(f(x),x,0,plus);
%do

Lo anterior es el resultado del límite
\begin{equation*}
\lim_{x\to0^+} f(x).
\end{equation*}
