
Algoritmo cuestion2
	Definir abrirprograma Como Cadena
	definir contrase�a como texto
	definir contrasenaValida como logico
	definir numero, numeroSegun, numeroMultiplicar, x,numeroWhile, factorial, i Como Entero
	
	factorial<-1
	
	escribir "dime tu contrase�a (6 caracteres m�nimo) "
	leer contrase�a
	
	contrasenaValida<-comprobarContrase�a(contrase�a)
	escribir contrasenaValida
	si contrasenaValida=verdadero entonces
		Escribir "contrase�a correcta"
	SiNo
		Escribir "contrase�a no cumple seguridad"
	FinSi
	
	si contrasenaValida=verdadero Entonces
		Escribir "Quieres ejecutar el programa?"
		leer abrirprograma
		si abrirprograma="si" Entonces
			Repetir
				Escribir "Escribe un n�mero del 1 al 100"
				Leer numero
			Hasta Que (numero>1 y numero<100)
			Escribir "Ahora escribeme la actividad que quieras hacer: 1. Tabla de multiplicaci�n 2. Factorial de un n�mero 3. Salir del programa"
			Leer numeroSegun
			Segun numeroSegun Hacer
				1: Escribir "Has elegido la actividad 1, dime un n�mero del que quieras saber la tabla de multiplicar:"
					Leer numeroMultiplicar
					Para x<-1 Hasta 10 con paso 1 Hacer
						Escribir x," x ", numeroMultiplicar, " = ", x*numeroMultiplicar
					FinPara
				2: Escribir "Has elegido la actividad 2"
					numeroWhile<--3
					Mientras numeroWhile<0 Hacer
						Escribir "Dime un n�mero positivo"
						Leer numeroWhile
					FinMientras
					Para i<-1 Hasta numeroWhile con paso 1 Hacer
						factorial<-factorial*i
					FinPara
				Escribir "El factorial de ",numeroWhile " es: ",factorial
				3: Escribir "Has elegido salir del programa, adi�s!"
			FinSegun
		SiNo
			Escribir "Adi�s!"
		FinSi
	SiNo
		Escribir "Adi�s!"
	FinSi
FinAlgoritmo

Funcion valido<-comprobarContrase�a(contrase�a)
	definir valido como logico
	si longitud(contrase�a)<6 entonces
		valido<-falso
	SiNo
		valido<-verdadero
	FinSi
FinFuncion
