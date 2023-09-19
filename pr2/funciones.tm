%!TeX root=main.tex

\section*{Funciones}

Para definir funciones se utiliza el operador {\color{blue}\verb|:=|},
por ejemplo para definir la función con nombre $f$ y que está definida
por la expresión $\frac{1}{e^x-1}$ se deberá escribir lo siguiente.

%ei f(x):=1/(%e^x-1)$

Una vez definida una función se puede usar posteriormente.
Por ejemplo se puede evaluar en diferentes valores.

%ei f(1);
%do

%ei f(log(3));
%do

%ei f(a^2);
%do

También se puede definir funciones de más de una variable independiente,
por ejemplo para definir la función $g(x,y)=x^2+y^2$ se hace los siguiente.

%ei g(x,y):=x^2+y^2$

Y se usa de la misma manera que las funciones en maxima.

%ei g(2,sqrt(3));
%do

%ei g(x,0);
%do

Para definir la función definida a trozos dada por la expresión
\begin{equation*}
 h(x) = \left\{ \begin{array}{ll}
  x^2 & \text{ si } x<0,\\
  x-3 & \text{ si } x\geq0,\\
 \end{array}\right.
\end{equation*}
se escribe

%ei h(x):=if (x<0) then x^2 else x-3$

Una vez definida se puede usar.

%ei h(-3);
%do

%ei h(0);
%do

%ei h(3);
%do
