%!TeX root=main.tex

\section*{Polinomio de Taylor}

El polinomio de Taylor de orden $k$
de una función $f$ en un punto $x_0$
tiene como expresión
\begin{equation*}
f(x_0)
+ \frac{f'(x_0)}{1!}(x-x_0)
+ \frac{f''(x_0)}{2!}(x-x_0)^2
+ \cdots
+ \frac{f^{k)}(x_0)}{k!}(x-x_0)^k.
\end{equation*}

El polinomio de Taylor es una aproximación
a la función cerca del punto $x_0$.
Para calcular el polinomio de Taylor en maxima
se usa el comando
\begin{center}
\maximain{taylor(f(x), x, centro, orden)}.
\end{center}

A continuación mostramos cómo se puede
calcular el polinomio de Taylor de diferentes
órdenes de la función
$f(x)=\frac{1}{1+x^2}$ en el punto $x_0=0$.

%ei f:1/(1+x^2);
%do

El polinomio de Taylor de orden $2$ se puede
calcular de la siguiente forma.

%ei p2:taytorat(taylor(f,x,0,2));
%do

Y los polinomios de grado $4,6$ y $8$.

%ei p4:taytorat(taylor(f,x,0,4));
%do

%ei p6:taytorat(taylor(f,x,0,6));
%do

%ei p8:taytorat(taylor(f,x,0,8));
%do

Finalmente, se grafica la función y los
polinomios de Taylor calculados anteriormente.

%ei wxplot2d([f,p2,p4,p6,p8],[x,-2,2]);
%c plot2d([f,p2,p4,p6,p8],[x,-1.5,1.5], [pdf_file, "./tayf.pdf"]);
\begin{maximat}
 \hfill
 \includegraphics[width=.5\textwidth]{tayf.pdf}
 \hfill
\end{maximat}
