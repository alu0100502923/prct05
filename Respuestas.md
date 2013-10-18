1.¿Cuál es el error en el código del método para calcular el máximo común divisor?
   El error está en la condición de entrada al "while" que debe ser v!= 0 o nunca entraría
   en dicho "while".

2.¿Qué comandos del depurador utilizó para detectarlo? Describa la sesión de depuración.
   Invoqué al depurador con el comando ruby -rdebug gcd.rb y luego l para mostrar la lista del código enumerado.
   Al ir comprobando las sentencias con n pude comprobar que no entraba al "while" por lo tanto ahi estaba el error.

3.Dirección 'HTTP' del repositorio que contiene el desarrollo de la práctica.
	https://github.com/alu0100502923/prct05
