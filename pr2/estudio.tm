%!TeX root=main.tex

\section*{Estudio de una función}

A continuación se hará un ejemplo de
estudio de la función
\begin{equation*}
f(x)=\frac{1}{x^2-4}.
\end{equation*}

Primero definamos la función para
trabajar con la expresión.

%ei f:1/(x^2-4);
%do

\begin{itemize}

\item \textbf{Dominio}.

Como es una función racional se estudiará
cuando $x^2-4=0$.

%ei solve(x^2-4=0,x);
%do

Por tanto $\dom(f)=\mathbb{R}\setminus\{-2,2\}$.

\item \textbf{Cortes con los ejes}.

Primero se estudia el corte con el eje de abscisas,
esto se lleva a cabo estudiando la ecuación
$f(x)=0$.

%ei solve(f=0,x);
%do

El corte con el eje de ordenadas existe ya que
$x=0$ está en el dominio de la función.

%ei ev(f,x=0);
%do

Por tanto el punto de corte con el eje de ordenadas
es $\left(0,
%c ev(f,x=0);
%d
\right)$.

\item \textbf{Simetría}.

Existen dos tipos de simetría, par e impar.
Una función tiene simetría par si se cumple
$f(x)=f(-x)$ para cada $x$ del dominio.
Y se dice que una función tiene simetría
impar si
$f(x)=-f(-x)$ para $x$ del dominio.

%ei is(f=ev(f,x=-x));
%do

%ei is(f=-ev(f,x=-x));
%do

En este ejemplo la función tiene simetría par.

\item \textbf{Asíntotas}.

Para el estudio de las asíntotas verticales,
se tendrá que analizar los posibles valores
de $x=a$ tal que el límite de $f(x)$ cuando
$x$ se aproxima a $a$, por la izquierda o
por la derecha, tiende a $\pm\infty$.

Para una función racional los posibles valores
se da donde el denominador se anula, para nuestro
ejemplo esto se da en los siguientes puntos.

%ei solve(x^2-4=0,x);
%do

Así que estudiamos los siguientes límites.

%ei limit(f,x,-2,minus);
%do

%ei limit(f,x,-2,plus);
%do

%ei limit(f,x,2,minus);
%do

%ei limit(f,x,2,plus);
%do

De lo anterior se deduce que $x=-2$ y $x=2$ son
asíntotas verticales de la función $f$.

Para el estudio de las asíntotas horizontales
se calculan los siguientes límites.

%ei limit(f,x,minf);
%do

%ei limit(f,x,inf);
%do

Del cálculo anterior se deduce que $y=0$ es
una asíntota horizontal.

En este caso no pueden existir asíntotas oblicuas,
pero recordamos que la asíntota oblicua es de la
forma $y=mx+n$, siendo $m$ y $n$ los siguientes
límites si existen.
\begin{equation*}
m=\lim_{x\to\infty} \frac{f(x)}{x}
\quad
n=\lim_{x\to\infty} \left(f(x)-mx\right).
\end{equation*}

\item \textbf{Monotonía y extremos}.

La monotonía depende del signo de la derivada.
Lo primero es calcular la derivada.

%ei df:diff(f,x);
%do

Para conocer el signo de la derivada se busca
los puntos críticos.

%ei solve(df=0,x);
%do

Por tanto el signo de la derivada se mantendrá
constante en cada intervalo:
\begin{enumerate}

\item $(-\infty,-2)$.

%ei ev(df,x=-3),numer;
%do

En este intervalo la derivada es positiva,
por tanto la función es creciente.

\item $(-2,0)$.

%ei ev(df,x=-1),numer;
%do

En este intervalo la derivada es positiva,
por tanto la función es creciente.

\item $(0,2)$.

%ei ev(df,x=1),numer;
%do

En este intervalo la derivada es negativa,
por tanto la función es decreciente.

\item $(2,\infty)$.

%ei ev(df,x=3),numer;
%do

En este intervalo la derivada es negativa,
por tanto la función es decreciente.

\end{enumerate}

El único posible extremo es $x=0$,
que en este caso es un máximo local, ya que
a la izquierda es creciente y a la derecha es
decreciente.

\item \textbf{Curvatura y puntos de inflexión}.

La concavidad y convexidad de una función se puede
conocer por medio del signo de la segunda derivada.
Así que calculemos la segunda derivada.

%ei d2f:factor(diff(f,x,2));
%do

Calculemos cuando la segunda derivada se hace cero.

%ei solve(d2f=0,x);
%do

Como vemos la segunda derivada no se anula en el
dominio de la función.
Por tanto estudiemos el signo de la segunda derivada
en cada intervalo del dominio.
\begin{enumerate}

\item $(-\infty,-2)$.

%ei ev(d2f,x=-3),numer;
%do

En este intervalo la segunda derivada es positiva,
por tanto la función es convexa.

\item $(-2,2)$.

%ei ev(d2f,x=0),numer;
%do

En este intervalo la segunda derivada es negativa,
por tanto la función es cóncava.

\item $(2,\infty)$.

%ei ev(d2f,x=3),numer;
%do

En este intervalo la segunda derivada es positiva,
por tanto la función es convexa.

\end{enumerate}

En este caso no hay puntos de inflexión,
ya que no hay puntos del dominio con
cambio de curvatura.

\item \textbf{Representación gráfica}.

%ei wxplot2d(f,[x,-5,5],[y,-10,10]);
%c plot2d(f,[x,-5,5],[y,-10,10], [pdf_file, "./estf.pdf"]);
\begin{maximat}
 \hfill
 \includegraphics[width=.5\textwidth]{estf.pdf}
 \hfill
\end{maximat}

\end{itemize}
