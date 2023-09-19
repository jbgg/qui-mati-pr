%!TeX root=main.tex

\section*{Integral indefinida de una función}

Para calcular una integral indefinida de una función se utiliza
el comando \maximain{integrate}, que toma dos argumentos, el
primero es la expresión de la función y el segundo es la variable
respecto se realiza la integral.

%ei f:5*x^4-2*x;
%do

%ei integrate(f,x);
%do

\section*{Integral definida de una función}

La función \maximain{integrate} también se puede usar para calcular
la integral definida de una función, para ello hay que añadir dos
argumentos adiciones que se interpretan como los límites de integración.

%ei integrate(f,x,2,5);
%do

\section*{Cálculo de áreas}

\subsection*{Ejemplo}

El problema del cálculo de áreas se puede resolver con el uso
de integrales definidas.
Por ejemplo para calcular el área entre la parábola
$y=-x^2+4$,
que se muestra en la siguiente gráfica,
y el eje de abscisa.

%ei wxplot2d(-x^2+4, [x, -3, 3]);
%c plot2d(-x^2+4, [x, -3, 3], [pdf_file, "./parabola.pdf"]);
\begin{maximat}
 \hfill
 \includegraphics[width=.5\textwidth]{parabola.pdf}
 \hfill
\end{maximat}

Habrá que calcular los puntos de corte con el eje $X$.

%ei solve(-x^2+4=0,x);
%do

Vemos si en el intervalo $[-2,2]$ la función es positiva o
negativa.

%ei ev(-x^2+4, x=0);
%do

Como es positiva entonces el área se podrá calcular como se muestra
a continuación.

%ei integrate(-x^2+4,x,-2,2);
%do

\subsection*{Ejemplo}

Si se quiere calcular el área encerrada entre la gráfica de la
función $f(x) = \sen(x)$ y el eje de abscisa en el intervalo
$[0,2\pi]$ no se puede realizar simplemente con

%ei integrate(sin(x),x,0,2*%pi);
%do

ya que el área sería cero.
Pero si se muestra la gráfica se verá que el area no puede
ser cero.

%ei wxplot2d(sin(x), [x, 0, 2*%pi]);
%c plot2d(sin(x), [x, 0, 2*%pi], [pdf_file, "./sin.pdf"]);
\begin{maximat}
 \hfill
 \includegraphics[width=.5\textwidth]{sin.pdf}
 \hfill
\end{maximat}

En este caso hay que estudiar el signo de la función ya que
en algunos puntos la función es negativa.
Sabemos que la función se hace cero dentro del intervalo
$[0,2\pi]$ en los puntos
$x=0$, $x=\pi$ y $x=2\pi$.
Y la función es positiva en el intervalo $[0,\pi]$
y negativa en el intervalo $[\pi,2\pi]$
por tanto el área sería la siguiente.

%ei integrate(sin(x),x,0,%pi)+integrate(-sin(x),x,%pi,2*%pi);
%do

Existe una manera de hacer el calculo anterior sin tener que
estudiar el signo de la función, solamente hay que saber los
puntos donde hay un posible cambio de signo.
Este cálculo se corresponde con
\begin{equation*}
\left|\int_{0}^{\pi} \sen x\,\mathrm{d}x\right|
+\left|\int_{\pi}^{2\pi} \sen x\,\mathrm{d}x\right|
.
\end{equation*}

%ei abs(integrate(sin(x),x,0,%pi))+abs(integrate(-sin(x),x,%pi,2*%pi));
%do

\subsection*{Ejemplo}

Si se requiere calcular el área encerrada entre dos gráficas,
por ejemplo para las función $f(x)=x$ e $g(x)=x^2$,
se deberá buscar primero los puntos de corte de las gráficas.
Una manera de realizarlo sería resolver la ecuación
$x=x^2$.

%ei f:x;
%do

%ei g:x^2;
%do

%ei solve(f=g,x);
%do

El área entonces se podrá calcular como
\begin{equation*}
\left|\int_{0}^{1} \left(f(x)-g(x)\right) \,\mathrm{d}x\right|
\end{equation*}

%ei abs(integrate(f-g, x, 0, 1));
%do

\subsection*{Ejemplo}

Consideremos el cálculo del área limitada por la curva
$y=x^3-15x^2+70x -100$ y la recta $y=-x+5$.

Lo primero será calcular los puntos de corte.

%ei f:x^3-15*x^2+70*x-100;
%do

%ei g:-x+5;
%do

%ei solve(f=g,x);
%do

Entonces el área se podrá calcular con la expresión.
\begin{equation*}
\left|\int_{3}^{5} \left(f(x)-g(x)\right) \,\mathrm{d}x\right|
+
\left|\int_{5}^{7} \left(f(x)-g(x)\right) \,\mathrm{d}x\right|
\end{equation*}

%ei abs(integrate(f-g, x, 3, 5))+abs(integrate(f-g, x, 5, 7));
%do

\section*{Cálculo de longitud de una curva}

La longitud de la curva dada como la gráfica de una función
$f(x)$
en un intervalo
$[a,b]$
se calcula por la expresión
\begin{equation*}
 \int_{a}^{b} \sqrt{1+\left(f'(x)\right)^2}\,\mathrm{d}x.
\end{equation*}
Por ejemplo, para calcular la longitud del arco de curva de
$9y^2 = 4x^3$ considerando la parte con segunda coordenada positiva
para el intervalo $[0,3]$.
Se podría calcular como se muestra a continuación.

%ei f:sqrt(4/9*x^3);
%do

%ei integrate(sqrt(1+diff(f,x)^2),x,0,3);
%do

\section*{Integrales dobles}

Para calcular integrales dobles se usa el comando
\maximain{integrate} dos veces, una por cada integración
respecto la variable correspondiente.

Por ejemplo para calcular
$\iint_{R} (xy+y+1)\,\mathrm{d}A$,
donde $R=[0,2]\times[0,1]$ se puede hacer lo siguiente.

%ei integrate(integrate(x*y+y+1,x,0,2),y,0,1);
%do

También se pueden intercambiar el orden de integración.

%ei integrate(integrate(x*y+y+1,y,0,1),x,0,2);
%do

Otro ejemplo, sería calcular la siguiente integral doble
\begin{equation*}
 \iint_{R} (-x^2y-x-3)\,\mathrm{d}A,
 \text{ donde }
 R = \{(x,y)\in\mathbb{R}^2 : 2\leq y\leq 2+x, 0\leq x\leq 1\}.
\end{equation*}

%ei integrate(integrate(-x^2*y-x-3,y,2,2+x),x,0,1);
%do

\section*{Integrales triples}

El cálculo de integrales triples es análogo al de
integrales dobles. Veamos a continuación la resolución
de un par de ejemplos.

\begin{equation*}
 \iiint_{Q} (x+y+z+xyz)\,\mathrm{d}V,
 \text{ donde }
 Q = [0,1]\times[0,2]\times[0,1].
\end{equation*}

%ei integrate(integrate(integrate(x+y+z+x*y*z,x,0,1),y,0,2),z,0,1);
%do

\begin{equation*}
 \iiint_{Q} 6xyz\,\mathrm{d}V,
 \text{ donde }
 Q = \{(x,y,z)\in\mathbb{R}^3 : 0\leq x\leq 1, 0\leq y\leq 4-x,
 0\leq z\leq 4-x-y\}.
\end{equation*}

%ei integrate(integrate(integrate(6*x*y*z,z,0,4-x-y),y,0,4-x),x,0,1);
%do

\section*{Coordenadas polares}

\subsection*{Ejemplo}

Recordamos que el cambio de variable a coordenadas polares es
\begin{equation*}
 x=r\cos\alpha,
 \;
 y=r\sen\alpha,
 \quad
 r\geq0,
 \;
 \alpha\in[0,2\pi].
\end{equation*}
Por ejemplo para calcular el área de un círculo de radio $2$,
se debería calcular
\begin{equation*}
 \iint_{R} f(r,\alpha)\,r\,\mathrm{d}A,
 \quad
 \text{ donde }
 R = [0,2]\times[0,2\pi],
 f(r,\alpha) = 1.
\end{equation*}

%ei integrate(integrate(r,r,0,2), %alpha, 0, 2*%pi);
%do

\subsection*{Ejemplo}

Veamos el cálculo de la integral
\begin{equation*}
 \iint_{R} \sqrt{x^2+y^2}\,\mathrm{d}A,
\quad
R=\{(x,y)\in\mathbb{R}^2: x^2+y^2\leq 9\}.
\end{equation*}
Para el cálculo de esta integral se hará un cambio
de variables a polares, así que primero se va a identificar
la región en las coordenadas polares.
Nos damos cuenta que el ángulo será $\alpha\in[0,2\pi]$
y el radio $r\in[0,3]$.
De esta manera se podrá hacer el cálculo como sigue.

%ei f:sqrt(x^2+y^2);
%do

%ei fcambio:ev(f,x=r*cos(%alpha),y=r*sin(%alpha));
%do

%ei integrate(integrate(fcambio*r,r,0,3), %alpha, 0, 2*%pi);
%do

\section*{Coordenadas cilíndricas}

Recordamos que el cambio de variable a coordenadas cilíndricas es
\begin{equation*}
 x=r\cos\alpha,
 \;
 y=r\sen\alpha,
 \;
 z=z,
 \quad
 r\geq0,
 \;
 \alpha\in[0,2\pi].
\end{equation*}
Por ejemplo para calcular el volumen de un cilindro de altura $3$
y de radio $\sqrt{5}$
se debería calcular
\begin{equation*}
 \iiint_{Q} f(r,\alpha,z)\,r\,\mathrm{d}A,
 \quad
 \text{ donde }
 Q = [0,\sqrt{5}]\times[0,2\pi]\times[0,3],
 f(r,\alpha,z) = 1.
\end{equation*}

%ei integrate(integrate(integrate(r,r,0,sqrt(5)), %alpha, 0, 2*%pi),z,0,3);
%do

\section*{Coordenadas esféricas}

Recordamos que el cambio de variable a coordenadas esféricas es
\begin{equation*}
 x=r\cos\alpha\sen\beta,
 \;
 y=r\sen\alpha\sen\beta,
 \;
 z=r\cos\beta,
 \quad
 r\geq0,
 \;
 \alpha\in[0,2\pi],
 \;
 \beta\in[0,\pi].
\end{equation*}
Por ejemplo para calcular el volumen de una esfera de
ecuación $x^2+y^2+z^2 = 9$
se debería calcular
\begin{equation*}
 \iiint_{Q} f(r,\alpha,\beta)\,r^2\sen\beta\,\mathrm{d}A,
 \quad
 \text{ donde }
 Q = [0,3]\times[0,2\pi]\times[0,\pi],
 f(r,\alpha,\beta) = 1.
\end{equation*}

%ei integrate(integrate(integrate(r^2*sin(%beta),r,0,3), %alpha, 0, 2*%pi),%beta,0,%pi);
%do
