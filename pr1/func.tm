%!TeX root=main.tex

\section*{Funciones matemáticas}

Existen diferentes funciones matemáticas predefinidas
por maxima, como por ejemplo el logaritmo neperiano
o la función seno.
A continuación se da una lista con algunas de las funciones
más usadas.

\begin{itemize}
\item \maximain{sqrt}. Función raíz cuadrada.

%ei sqrt(9);
%do

\item \maximain{log}. Función logaritmo neperiano.

%ei log(%e);
%do

%ei log(10);
%do

\item \maximain{exp}. Función exponencial.
En realidad \maximain{exp(x)} es lo mismo que
\maximain{\%e\^{}x}.

%ei is(exp(x)=%e^x);
%do

\item \maximain{sin}. Función seno.

%ei sin(%pi);
%do

\item \maximain{cos}. Función coseno.

%ei cos(0);
%do

\item \maximain{tan}. Función tangente.

%ei tan(%pi/4);
%do

\item \maximain{asin}, \maximain{acos}, \maximain{atan}.
Función arcoseno, arcocoseno, y arcotangente.

%ei atan(1);
%do

\end{itemize}
