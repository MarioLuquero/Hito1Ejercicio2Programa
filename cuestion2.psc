
Algoritmo cuestion2
	Definir abrirprograma Como Cadena
	definir contraseña como texto
	definir contrasenaValida como logico
	definir numero, numeroSegun, numeroMultiplicar, x,numeroWhile, factorial, i Como Entero
	
	factorial<-1
	
	escribir "dime tu contraseña (6 caracteres mínimo) "
	leer contraseña
	
	contrasenaValida<-comprobarContraseña(contraseña)
	escribir contrasenaValida
	si contrasenaValida=verdadero entonces
		Escribir "contraseña correcta"
	SiNo
		Escribir "contraseña no cumple seguridad"
	FinSi
	
	si contrasenaValida=verdadero Entonces
		Escribir "Quieres ejecutar el programa?"
		leer abrirprograma
		si abrirprograma="si" Entonces
			Repetir
				Escribir "Escribe un número del 1 al 100"
				Leer numero
			Hasta Que (numero>1 y numero<100)
			Escribir "Ahora escribeme la actividad que quieras hacer: 1. Tabla de multiplicación 2. Factorial de un número 3. Salir del programa"
			Leer numeroSegun
			Segun numeroSegun Hacer
				1: Escribir "Has elegido la actividad 1, dime un número del que quieras saber la tabla de multiplicar:"
					Leer numeroMultiplicar
					Para x<-1 Hasta 10 con paso 1 Hacer
						Escribir x," x ", numeroMultiplicar, " = ", x*numeroMultiplicar
					FinPara
				2: Escribir "Has elegido la actividad 2"
					numeroWhile<--3
					Mientras numeroWhile<0 Hacer
						Escribir "Dime un número positivo"
						Leer numeroWhile
					FinMientras
					Para i<-1 Hasta numeroWhile con paso 1 Hacer
						factorial<-factorial*i
					FinPara
				Escribir "El factorial de ",numeroWhile " es: ",factorial
				3: Escribir "Has elegido salir del programa, adiós!"
			FinSegun
		SiNo
			Escribir "Adiós!"
		FinSi
	SiNo
		Escribir "Adiós!"
	FinSi
FinAlgoritmo

Funcion valido<-comprobarContraseña(contraseña)
	definir valido como logico
	si longitud(contraseña)<6 entonces
		valido<-falso
	SiNo
		valido<-verdadero
	FinSi
FinFuncion
