%!TeX root=main.tex

\section*{Matrices}

Para definir las matrices se usa el comando \maximain{matrix}
definiendo las filas, por ejemplo la matriz
\begin{equation*}
 A = \begin{pmatrix}
  1 & 1 & 3 \\
  3 & 0 & -1 \\
  0 & 2 & 1 \\
 \end{pmatrix}
\end{equation*}
se define como

%ei A:matrix([1,1,3],[3,0,-1],[0,2,1]);
%do

Y la matriz 
\begin{equation*}
 B = \begin{pmatrix}
  -1 & 0 & 1 \\
  2 & -1 & 0 \\
  1 & 1 & -2 \\
 \end{pmatrix}
\end{equation*}
se define como

%ei B:matrix([-1,0,1],[2,-1,0],[1,1,-2]);
%do

\section*{Operaciones y funciones de matrices}

\begin{itemize}
 \item \textbf{Suma y resta de matrices.} La suma de matrices se
  realiza el operador \maximain{+} y la resta de matrices con el
  operador \maximain{-}.

%ei A+B;
%do

 \item \textbf{Multiplicación escalar.} El producto de un número por
  una matriz se realiza con \maximain{*}.

%ei 2*A;
%do

 \item \textbf{Multiplicación de matrices.} La multiplicación de dos
  matrices se lleva a cabo con el operador punto \maximain{.}.

%ei A.B;
%do

 \item \textbf{Potencia de una matriz.} La potencia de una matriz
  se calcula con \maximain{\^}\maximain{\^}.

%ei A^^7;
%do

 \item \textbf{Matriz traspuesta.} La matriz traspuesta se calcula con
  \maximain{transpose}.

%ei transpose(A);
%do

 \item \textbf{Matriz inversa.} La matriz inversa de una matriz se
  calcula con \maximain{invert}.

%ei invert(A);
%do

 \item \textbf{Rango de una matriz.} El rango de una matriz se calcula
  con \maximain{rank}.

%ei rank(A);
%do

 \item \textbf{Determinante de una matriz.} El determinante de una
  matriz se calcula con \maximain{determinant}.

%ei determinant(A);
%do

 \item \textbf{Matriz identidad.} La matriz identidad de orden $n$
  se puede escribir como \maximain{ident(n)}.

%ei ident(4);
%do

\end{itemize}

También existe la manera de trabajar con elementos de
una matriz.
\begin{enumerate}
 \item \textbf{Elemento de la posición $(i,j)$.} Por ejemplo para
  obtener el elemento de la fila $2$ y columna $3$ de la matriz $A$
  se hace los siguiente.

%ei A[2,3];
%do

 \item \textbf{Obtención de una fila.} Para obtener la segunda fila
  de la matriz $A$, se puede escribir.

%ei A[2];
%do

 \item \textbf{Obtención de una columna.} Para obtener la tercera
  columna de la matriz $A$, se escribe.

%ei col(A, 3);
%do

 \item \textbf{Obtención de una submatriz.} El comando para obtener
  una submatriz es
  \begin{center}
   \maximain{submatrix(i1,i2,...,A,j1,j2,...)}
  \end{center}
  que devuelve la submatriz de $A$ eliminando las filas
  \maximain{i1,i2,...} y las columnas \maximain{j1,j2,...}.

%ei submatrix(1,A,1,3);
%do

 \item \textbf{Agregado de filas.} El comando para agregar filas a
  una matriz $A$ es
  \begin{center}
   \maximain{addrow(A,f1,f2,...)}.
  \end{center}

%ei addrow(A,[1,3,1],[2,2,2]);
%do

 \item \textbf{Agregado de columnas.} El comando para agregar columnas
  a una matriz $A$ es
  \begin{center}
   \maximain{addcol(A,f1,f2,...)}.
  \end{center}

%ei addcol(A,[1,3,1],[2,2,2]);
%do

\end{enumerate}

\section*{Transformaciones elementales por filas}

Las transformaciones elementales por filas a una matriz $A$
se pueden realizar de la siguiente manera.
\begin{itemize}
 \item \maximain{rowswap(A,i,j)}. Intercambia la fila $i$ y
  la fila $j$ de la matriz $A$, esto es intercambia $F_i$ y
  $F_j$.
 \item \maximain{rowop(A,i,j,a)}. Realiza la transformación
  a la fila $F_i$ que la cambia por $F_i-aF_j$.
 \item \maximain{A[i]:a*A[i]}. Multiplica la fila $i$ por $a$,
  esto es $F_i = aF_i$.
\end{itemize}

Las funciones \maximain{rowswap} y \maximain{rowop} no cambian
el valor de la matriz $A$, solamente calcula una nueva matriz
con la transformación realizada.

A continuación mostramos algunos ejemplos de transformaciones
elementales por fila.

\begin{itemize}
 \item Modificar la matriz $A$ multiplicando la segunda fila
  por $1/2$.

%ei A[2]:1/2*A[2];
%do

%ei A;
%do

 \item Intercambiar la fila $1$ y $2$ de la matriz $A$ (la matriz $A$
  no se modifica).

%ei rowswap(A,1,2);
%do

 \item Restar a la fila $2$ la fila $1$ multiplicada por $3$ (la matriz
  $A$ no se modifica).

%ei rowop(A,2,1,3);
%do

 \item Restar a la fila $3$ la fila $1$ multiplicada por $5$ (la matriz
  $A$ no se modifica).

%ei rowop(A,3,1,5);
%do

\end{itemize}

\section*{Forma escalonada reducida por filas}

El comando \maximain{echelon} calcula una matriz escalonada
equivalente por filas a otra matriz.

%ei A:matrix([1,3,4,-5],[2,-2,1,3],[2,2,1,-5]);
%do


%ei Aesc:echelon(A);
%do

La matriz anterior es escalonada pero no es escalonada reducida, ya
que no hay ceros por encima de los pivotes. Para conseguir una matriz
escalonada reducida se tendrá que aplicar transformaciones elementales
por filas.

%ei Aesc1:rowop(Aesc,1,3,Aesc[1,3]);
%do


%ei Aesc2:rowop(Aesc1,2,3,Aesc1[2,3]);
%do


%ei Aesc3:rowop(Aesc2,1,2,Aesc2[1,2]);
%do
