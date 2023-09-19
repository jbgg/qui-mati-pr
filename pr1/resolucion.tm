%!TeX root=main.tex

\section*{Resolución de ecuaciones}

Existe una función, llamada \maximain{solve}, que resuelve
ecuaciones y sistemas de ecuaciones.
Por ejemplo para resolver la ecuación de segundo grado
$7x^2-49x+84 = 0$ se puede escribir el siguiente comando.

%ei solve(7*x^2-49*x+84=0, x);
%do

Nótese que el primer argumento de \maximain{solve} es la
ecuación y el segundo argumento es la variable que representa
la incógnita.
Si el lado derecho de la ecuación es cero, no hace falta
escribirlo en el comando, como se muestra a continuación.

%ei solve(7*x^2-49*x+84, x);
%do

Cuando solamente aparece una incógnita en la expresión a resolver
no es necesario indicar la variable que representa la incógnita.

%ei solve(7*x^2-49*x+84);
%do

Perso sin embargo, si en la ecuación aparece alguna otra variable,
entonces es necesario indicar la variable que representa la incógnita.
Por ejemplo de la ecuación
$ x^2-(a+1)x+a = 0$.

%ei solve(x^2-(a+1)*x+a,x);
%do
