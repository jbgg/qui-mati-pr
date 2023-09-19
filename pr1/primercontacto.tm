%!TeX root=main.tex

\section*{Primer contacto}
Maxima es un lenguaje de programación que implementa
tanto cálculo simbólico como cálculo numérico.
En realidad vamos a usar wxMaxima que es un entorno
donde se puede ejecutar secuencias paso a paso
mostrándose el resultado en cada paso.
Tanto el código de Maxima como el resultado están en
celdas, así que existen el tipo de celda de entrada
y el tipo de celda de salida, el primer tipo es código
que se ejecuta y el segundo es el resultado.
Además las celdas se van a enumerando automáticamente
por {\color{red}\texttt{(\%i1)}}, {\color{red}\texttt{(\%i2)}},
{\color{red}\texttt{(\%i3)}}, {\color{red}\texttt{(\%i3)}},
\ldots para las entradas y 
por {\color{blue}\texttt{(\%o1)}}, {\color{blue}\texttt{(\%o2)}},
{\color{blue}\texttt{(\%o3)}}, {\color{blue}\texttt{(\%o3)}},
\ldots para las salidas.

Veamos un cálculo que se puede hacer en Maxima.

%ei 2+2;
%do

Para ejecutar una celda de entrada hay que pulsar
\textbf{Shift}+\textbf{Intro} o la tecla \textbf{Enter}

Una misma celda de entrada puede tener varias salidas
como mostramos a continuación.

%ei 2+2; 3+3;
%c 2+2;
%do
%c 3+3;
%do

Es importante ver que para separar instrucciones en
una misma celda de entrada escribimos \maximain{;}
(punto y coma).
Otra opción es acabar una instrucción con \maximain{\$},
en este caso no se mostrará el resultado de dicha instrucción.
A continuación mostramos instrucciones acabadas en
\maximain{\$}.

%ei 2+2$ 2*4; 3+3$
%do

Una característica importante de Maxima es el manejo de
cálculo simbólico, lo cual hace posible trabajar con
variables o incógnitas.
Por ejemplo podemos escribir un polinomio.

%ei 5*x^2-7*x+20;
%do
