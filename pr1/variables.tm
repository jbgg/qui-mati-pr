%!TeX root=main.tex

\section*{Definiendo y usando variables}

Las variables en los lenguajes de programación
sirven para almacenar información, y así se puede
recuperar el valor posteriormente haciendo referencia a la
variable.
Las variables se identifican con un nombre.
Veamos como definir una variable.

%ei a:7;
%do

En el comando previo se ha definido la variable cuyo
nombre es \maximain{a} y el valor que almacena es
\maximain{7}. Una vez definida una variable se podrá
usar para cálculos futuros, por ejemplo a continuación
se calcula el doble del valor de la variable \maximain{a}.

%ei 2*a;
%do

A continuación mostramos un ejemplo haciéndo cálculos con
variables.

%ei a:8$
%el b:2*a;
%do

%ei prod: a*b;
%do

%ei prod/b;
%do

Para eliminar el valor de una variable se usa
el comando \texttt{kill}.

%ei x:7;
%do

%ei kill(x);
%do

%ei x;
%do

Y para eliminar el valor de todas las variables definidas
se usa el mismo comando como sigue.

%ei kill(all);
%do

Existen algunas variables definidas por maxima,
por ejemplo el número $\pi$, el número $e$ y
el número imaginario $i$.

%ei %pi;
%do

%ei %e;
%do

%ei %i;
%do

Las variables también pueden almacenar expresiones, por ejemplo
se puede guardar un polinomio en una variable.

%ei pol:x^2-3*x+2;
%do

Cuando se tiene una expresión que tiene variables se puede usar
la función \maximain{ev} para evaluar la expresión cuando se
sustituye las variables por valores.

%ei ev(pol, x=0);
%do

También se puede evaluar con otras variables, como mostramos a
continuación.

%ei ev(pol, x=y);
%do

En el siguiente ejemplo se muestra la manera de evaluar una
expresión sustituyendo en más de una variable.

%ei e1:(7*a+b)/(%e^b-%pi*a);
%do

%ei ev(e1,a=5,b=7);
%do
