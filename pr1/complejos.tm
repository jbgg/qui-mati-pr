%!TeX root=main.tex

\section*{Números complejos}

Un número complejo, por ejemplo
$1+2i$, se puede expresar en maxima como
se muestra a continuación.

%ei z:1+2*%i;
%do

Existen diferentes funciones relacionadas
con los números complejos, algunas de ellas
son las siguientes.

\begin{itemize}

\item \maximain{realpart}.
Calcula la parte real de un número complejo.

%ei realpart(z);
%do

\item \maximain{imagpart}.
Calcula la parte imaginaria de un número complejo.

%ei imagpart(z);
%do

\item \maximain{conjugate}.
Calcula el conjugado de un número complejo.

%ei conjugate(z);
%do

\item \maximain{cabs}.
Calcula el módulo de un número complejo.

%ei cabs(z);
%do

\item \maximain{carg}.
Calcula el argumento de un número complejo.

%ei carg(z);
%do

\end{itemize}
