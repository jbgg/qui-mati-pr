%!TeX root=main.tex

\section*{Continuidad}

Las funciones elementales polinómicas,
trigonométricas y exponenciales
son continuas en su dominio.
Algunas funciones vienen expresadas en
términos de otras funciones,
así recordaremos el estudio de la continuidad
para varios tipos de funciones.

\begin{itemize}

\item \textbf{Funciones racionales.}

Las funciones raciones son de la forma
$f(x)=\frac{g(x)}{h(x)}$,
y su dominio es
$\dom(f)= \mathbb{R}\setminus
\{x\in\mathbb{R} : h(x)=0\}$.

Veamos como ejemplo la función
$f(x)= \frac{1}{x^3-1}$.
Para conocer el dominio habrá que resolver
$x^3-1=0$.

%ei solve(x^3-1=0,x);
%do

Así que el dominio de $f$ es
$\dom(f)=\mathbb{R}\setminus\{1\}$.

\item \textbf{Funciones radicales.}

Una función $f(x)=\sqrt{g(x)}$ tendrá
como dominio
$\dom(f)=\{x\in\mathbb{R}: g(x)\geq0\}$.

Veamos como ejemplo la función
$f(x)=\sqrt{x^2-9}$.
Para conocer el dominio se tendrá
que resolver la inecuación
$x^2-9\geq0$.
Esto se puede llevar a cabo con la función
\maximain{fourier\_elim}.
Para ello hay que cargar antes un paquete
(esto solamente se deberá hacer una vez).

%ei load(fourier_elim)$

Una vez cargado ya se puede usar la función
\maximain{fourier\_elim}.

%ei fourier_elim([x^2-9 >= 0], [x]);
%do

Así que el dominio es
$\dom(f)=(-\infty,3]\cup [3,+\infty)$.

\item \textbf{Funciones logarítmicas.}

Si $f(x)=\log(g(x))$ entonces
$\dom(f)=\{x\in\mathbb{R}: g(x)>0\}$.

Veamos el ejemplo de
$f(x)=\log(x^3-x^2-4x+4)$.

Habrá que encontrar cuando
$x^3-x^2-4x+4>0$.

%ei fourier_elim([x^3-x^2-4*x+4>0],[x]);
%do

Así que
$\dom(f)=(-2,1)\cup(2,+\infty)$.

\item \textbf{Funciones definidas a trozos.}

Cuando una función está definida a trozo habrá que
estudiar la continuidad en el interior de cada intervalo
donde se da una definición de la función, y posteriormente
estudiar los límites laterales y el valor de la función
en los extremos de los intervalos.

Estudiemos la continuidad de la función
\begin{equation*}
f(x)=
\left\{
\begin{aligned}
\frac{\cos(x)}{x-1} &\quad \text{ si } x\leq0\\
\log(x+1) &\quad \text{ si } x>0\\
\end{aligned}
\right.
\end{equation*}

Es fácil ver que la función está bien definida
y que es continua en cada intervalo
$(-\infty,0)$ y $(0,+\infty)$.
Estudiemos la continuidad en $x=0$,
para ello estudiamos los límites laterales.

%ei limit(cos(x)/(x-1), x, 0, minus);
%do

%ei limit(log(x+1), x, 0, plus);
%do

Como los límites no coinciden la función
no es continua en $x=0$.

\end{itemize}
