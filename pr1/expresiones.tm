%!TeX root=main.tex

\section*{Expresiones algebraicas}

Una expresión algebraica es una expresión donde pueden
aparecer variables.
Una misma expresión puede escribirse de varias maneras
ya que existen propiedades que nos aseguran identidades,
las propiedades dependerán de lo que representen las variables.
Por ejemplo, si las variables $a$ y $b$ representan números
reales, entonces se sabe que $ab = ba$, pero si representan
matrices, entonces no es cierta la igualdad anterior.

En muchas ocasiones, después de realizar un cálculo con
Maxima la expresión resultante no está representada de la
forma más simplificada, o quizás buscamos representarla
de otra manera, es por ello que habrá que usar funciones
que modifican las expresiones de manera equivalente.
A continuación veremos varias funciones de Maxima para
trabajar con expresiones.

La función \maximain{expand} sirve para expresar una
expresión en sumandos realizando todos los productos
necesarios.
En el siguiente ejemplo se desarrolla el binomio cúbico
en sumandos.

%ei expand((a+b)^3);
%do

La función \maximain{factor} es la opuesta a la anterior
y cuando puede factoriza la expresión.
En los siguientes ejemplos se muestra la forma de usar la
función para factorizar expresiones.

%ei factor(a^2-b^2);
%do

%ei factor(x^2-3*x+2);
%do

La función \maximain{radcan} sirve para expresar
en la forma canónica (según Maxima) una expresión
que contenga polinomios, exponenciales, logaritmos
y radicales.
Ejemplo de su uso se muestra a continuación.

%ei e1:(2*x^4-5*x^3+x^2+5*x-3)/(2*x^3-x^2-7*x+6);
%do

%ei radcan(e1);
%do

%ei e2:1+1/(1+1/(1+1/x));
%do

%ei radcan(e2);
%do

% ratsimp
% trigsimp
% logcontract
