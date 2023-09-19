%!TeX root=main.tex

\section{Definición de funciones de varias variables}

Las funciones en varias variables se pueden definir
de la misma manera que se hace para una variable,
pero añadiendo variables adicionales en la definición
de la función.
Por ejemplo para definir la función
$f(x,y) = \cos(x^2)+\sen(y^2)$
se escribirá lo siguiente.

%ei f: cos(x^2) + sin(y^2);
%do

De la misma manera se puede calcular el valor en un punto,
por ejemplo para calcular el valor $f(\pi, 2\pi)$ se escribirá

%ei ev(f,x=%pi,y=2*%pi);
%do

\section{Gráficas de funciones de dos variables}

A continuación veremos diferentes comandos
de Maxima
para realizar gráficas de funciones en dos
variables.

\subsection{Usando \texttt{wxplot3d}}

Para graficar una función $f$ de dos variables
en el rectángulo $[a,b]\times[c,d]$, se puede
usar el comando \texttt{wxplot3d} de la siguiente
manera.
\begin{center}
 \maximain{wxplot3d(f, [x, a, b], [y, c, d])}
\end{center}
Por ejemplo, a continuación representamos gráficamente
las funciones definidas previamente.

%ei wxplot3d(f, [x, -1, 1], [y, -1, 1]);
%c plot3d(f, [x, -1, 1], [y, -1, 1], [pdf_file, "./wxplot3d_f.pdf"]);
\begin{maximat}
 \hfill
 \includegraphics[width=.5\textwidth]{wxplot3d_f.pdf}
 \hfill
\end{maximat}

\subsection{Usando \texttt{wxcontour\_plot}}

Para realizar una representación de las curvas de nivel
de una función de dos variables usaremos el comando siguiente.
\begin{center}
 \maximain{wxcontour\_plot(f, [x,a,b], [y,c,d])}
\end{center}

A continuación mostramos las curvas de nivel de las funciones
definidas anteriormente.

%ei wxcontour_plot(f, [x,-1,1], [y,-1,1]);
%c contour_plot(f, [x,-1,1], [y,-1,1],[pdf_file, "./wxcontour_f.pdf"]);
\begin{maximat}
 \hfill
 \includegraphics[width=.5\textwidth]{wxcontour_f.pdf}
 \hfill
\end{maximat}

\subsection{Usando \texttt{wxdraw3d}}

Se puede usar \texttt{wxdraw3d} para hacer una representación
gráfica de una función en dos variables donde se muestren las
curvas de nivel y la gráfica de la función en la misma imagen.

Por ejemplo, para la función $h(x,y) = x^2 e^{1-x^2-y^2/2}$.

%ei load(draw)$
%ei wxdraw3d(enhanced3d = true, colorbox = false,
%el surface_hide = true, contour = both,
%el explicit(x^2*exp(1-x^2-y^2/2), x, -3, 3, y, -2, 2)
%el );
%c draw3d(enhanced3d = true, colorbox = false,
%c surface_hide = true, contour = both,
%c explicit(x^2*exp(1-x^2-y^2/2), x, -3, 3, y, -2, 2),
%c file_name = "./wxdraw3d_h", terminal = pdf);
\begin{maximat}
 \hfill
 \includegraphics[width=.5\textwidth]{wxdraw3d_h.pdf}
 \hfill
\end{maximat}

\section{Límites}

En Maxima no existe ninguna función para calcular límites
de funciones en varias variables de manera directa.
Así que tendremos que buscar otros métodos para estudiarlos.

\subsection{Límites iterados}

Una forma de comprobar la posible existencia de un límite
en dos variables es calculando los límites iterados,
existen dos límites iterados que son
\begin{equation*}
 \lim_{x\to x_0}\lim_{y\to y_0} f(x,y)
 \quad\text{ y }\quad
 \lim_{y\to y_0}\lim_{x\to x_0} f(x,y),
\end{equation*}
Para ello nos basamos en el comando \maximain{limit} que
calcula límites en una variable, los límites anteriores
se pueden calcular, respectivamente, en Maxima con
\begin{center}
 \maximain{limit(limit(f(x,y),y,y0),x,x0)}
 \quad y \quad
 \maximain{limit(limit(f(x,y),x,x0),y,y0)}
\end{center}

Considere la función
\begin{equation*}
g(x,y)=\frac{xy(x^2-y^2)}{x^2+y^2}
\end{equation*}

%ei g: x*y*(x^2-y^2)/(x^2+y^2);
%do

Por ejemplos los límites iterados
en el punto $(0,0)$ de la función $g$
definida previamente son los siguientes.

%ei limit(limit(g,y,0),x,0);
%do

%ei limit(limit(g,x,0),y,0);
%do

En este caso, no podemos asegurar que el límite
\begin{equation*}
 \lim_{(x,y)\to (0,0)} g(x,y);
\end{equation*}
sea $0$, pero si existiese la única posibilidad
es que su valor sea $0$.

Si ahora queremos estudiar el límite
\begin{equation*}
 \lim_{(x,y)\to (0,0)} \frac{x^2-y}{x^5+y}
\end{equation*}
con límites iterados, haríamos lo siguiente.

%ei limit(limit((x^2-y)/(x^5+y),y,0),x,0);
%do
%ei limit(limit((x^2-y)/(x^5+y),x,0),y,0);
%do

En este caso, ya que los límites iterados son distintos
podemos asegurar que el límite no existe.

\subsection{Límites en una dirección}

Cuando se calculan los límites iterados, se está obteniendo
la información del límite cuando nos acercamos en las direcciones
de los ejes.
Sin embargo, hay ocasiones que los límites iterados coinciden
aunque el límite no exista, en estos casos se puede recurrir
al estudio de los límites en una dirección diferente a los ejes.
Veamos un ejemplo donde ocurre esta situación,
considera la función $f(x,y) = \frac{xy^2}{x^3+y^3}$ y el límite
\begin{equation*}
 \lim_{(x,y)\to(0,0)} f(x,y).
\end{equation*}
Si se calculan los límites iterados el resultado de ambos será $0$.
Pero si se calcula el límite en la dirección del vector $v=(1,1)$
se puede ver que es diferente. El cálculo de este límite se hace con
la expresión
\begin{equation*}
 \lim_{t\to0} f(0 + t v_1, 0 + t v_2),
\end{equation*}
el cual se puede calcular en Maxima como

%ei f:x*y^2/(x^3+y^3)$
%el v:[1,1]$
%el limit(ev(f,x=0+t*v[1],y=0+t*v[2]), t, 0);
%do

\section{Diferenciabilidad}

\subsection{Derivadas parciales}
Para calcular derivadas parciales de una función $f$
usamos el comando \maximain{diff} usando como segundo
argumento la variable respecto a la cual se deriva.
De esa manera, para calcular
$\frac{\partial f}{\partial x}$
y
$\frac{\partial f}{\partial y}$
se hace
\begin{center}
 \maximain{diff(f(x,y),x)}
 \quad y \quad
 \maximain{diff(f(x,y),y)},
\end{center}
para calcular las derivadas cruzadas
$\frac{\partial^2 f}{\partial y\partial x}$
y
$\frac{\partial^2 f}{\partial x\partial y}$
se puede realizar, respectivamente, como
\begin{center}
 \maximain{diff(diff(f(x,y),x),y)}
 \quad y \quad
 \maximain{diff(diff(f(x,y),y),x)},
\end{center}
por último, para calcular
$\frac{\partial^2 f}{\partial x^2}$
y
$\frac{\partial^2 f}{\partial y^2}$
se hará respectivamente como
\begin{center}
 \maximain{diff(f(x,y),x,2)}
 \quad y \quad
 \maximain{diff(f(x,y),y,2)}.
\end{center}

Apliquemos lo anterior a un ejemplo,
calculemos las derivadas parciales de la función
$f(x,y) = x^2-3xy+5xy^3$.

%ei f:x^2-3*x*y+5*x*y^3$

%ei fx:diff(f,x);
%do

%ei fy:diff(f,y);
%do

%ei fxy:diff(fx,y);
%do

%ei fyx:diff(fy,x);
%do

%ei fxx:diff(fx,x);
%do

%ei fyy:diff(fy,y);
%do

Si se quiere evaluar una derivada parcial en algún punto,
se podrá hacer de dos maneras, por ejemplo se muestra la
forma de calcular
\begin{equation*}
\frac{\partial^2 f}{\partial y^2}(-1,2).
\end{equation*}

%ei ev(fyy, x=-1, y=2);
%do

%ei fyy, x=-1, y=2;
%do

\subsection{Derivadas direccionales}

Dado un vector
$u = (u_1, u_2)$,
se define la derivada direccional
de una función $f$ en un punto $(x_0, y_0)$
como
\begin{equation*}
 D_uf(x_0,y_0) =
 \lim_{t\to0} \frac{f(x_0+tu_1,y_0+tu_2)-f(x_0,y_0)}{t},
\end{equation*}
cuyo valor se puede calcular
usando las derivadas parciales con la expresión
\begin{equation*}
 D_uf(x_0,y_0) =
 \frac{\partial f}{\partial x}(x_0,y_0)u_1
 +
 \frac{\partial f}{\partial y}(x_0,y_0)u_2.
\end{equation*}
A continuación se realiza un ejemplo en Maxima
calculando $D_uf(x_0,y_0)$ siendo la función
$f$ definida anteriormente,
$u=(1,1)$
y $(x_0,y_0) = (-1,2)$.

%ei x0:-1$ y0:2$
%el u:[1,1]$
%el ev(fx*u[1]+fy*u[2], x=x0, y=y0);
%do

\section{Gradiente}

Dada una función de dos variables $f$ se define
el vector gradiente como
\begin{equation*}
 \nabla f =
 \left(
 \frac{\partial f}{\partial x},
 \frac{\partial f}{\partial y}
 \right).
\end{equation*}
Por tanto se puede calcular en Maxima como mostramos
para la función $f$ definida anteriormente.

%ei gradf:[diff(f,x), diff(f,y)];
%do

O si ya se tiene definido las derivadas parciales
se podría calcular como sigue.

%ei gradf:[fx, fy];
%do

\section{Divergencia y rotacional}

Recordemos que para una función vectorial de tres variables
$g(x,y,z) = (g_1(x,y,z), g_2(x,y,z), g_3(x,y,z))$
se define la divergencia como
\begin{equation*}
 \divop g =
 \frac{\partial g_1}{\partial x}
 +\frac{\partial g_2}{\partial y}
 +\frac{\partial g_3}{\partial z},
\end{equation*}
y el rotacional como
\begin{equation*}
 \rotop g =
 \left(
 \frac{\partial g_3}{\partial y}
 -\frac{\partial g_2}{\partial z},
 \frac{\partial g_1}{\partial z}
 -\frac{\partial g_3}{\partial x},
 \frac{\partial g_2}{\partial x}
 -\frac{\partial g_1}{\partial y}
 \right).
\end{equation*}

Por tanto para calcular la divergencia y el rotacional
a la función
$g(x,y,z) = (2xy, y^2z, xyz^2)$
se haría lo siguiente.

%ei g:[2*x*y,y^2*z,x*y*z^2];
%do

%ei diver:diff(g[1],x) + diff(g[2],y) + diff(g[3],z);
%do

%ei rot:[
%el diff(g[3],y) - diff(g[2],z),
%el diff(g[1],z) - diff(g[3],x),
%el diff(g[2],x) - diff(g[1],y)
%el ];
%do
