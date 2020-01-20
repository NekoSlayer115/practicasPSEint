Algoritmo examensueldo
	definir t,e,i,hora,salario,j,k,numazar como entero;
	definir n,dato,nombre,apellido,a,apellidouno,apellidodos como texto;
	definir salir como logico;

	escribir "¿Cuantos trabajadores hay?";//definimos la cantidad de trabajadores
	leer t;
	dimension nombre(t);
	dimension apellidouno(t);
	dimension apellidodos(t);
	dimension hora(t);//array para cada variable
	Repetir//repeticion hasta que sea salir sea verdadera
		
		escribir"Bienvenido al menú principal";//menu
		escribir"1.Introducir datos de los empleados";
		escribir"2.Muestra las nóminas"; 
		escribir"3.Sorteo navidad";
		escribir"4.Salir";
		escribir"Elige una opción:";
		leer e;
		Segun e Hacer//condicional segun la opcion escogida
			1:
				Para i<-0 Hasta t-1 Hacer //definimos valores de cada array
					escribir " nombre del trabajador: ";
					leer nombre(i);
					escribir " apellidos del trabajador: ";
					leer apellidouno(i);
					leer apellidodos(i);
					escribir " horas del trabajador: ";
					leer hora(i);
					Si hora(i)>160 Entonces
						Repetir
							escribir" Ese dato es incorrecto ";
							escribir " horas del trabajador: ";
							leer hora(i);
						Hasta Que hora(i)<=160 y hora(i)>=0 //indicar limites de sueldo
					Fin Si 
				Fin Para
					
				
				
			
			2:Para i<-0 Hasta t-1 Hacer//mostramos los elementos de cada array
				escribir Sin Saltar " El empleado : " nombre(i);
				
				escribir " " apellidouno(i) " " apellidodos(i);
				
				escribir Sin Saltar " horas trabajadas : "  hora(i) " h "; 
				Escribir " mes: " hora(i)*12 " euros";
				
			Fin Para
				
		3:escribir"Ahora vamos a hacer el sorteo de una paletilla ibérica entre los empleados";
			escribir"pulsa una tecla para realizar el sorteo";
			leer a;
			numazar<-azar(t);//calculo aleatorio
			escribir"Ha salido el número :" numazar+1; 
			escribir"El empleado ganador es: " nombre(numazar) " " apellidouno(i) " " apellidodos(i) "¡Enhorabuena!";
				
			4:salir=verdadero; //mostrar salida
				
			De Otro Modo:
				escribir"No has seleccionado correctamente"; //volver en caso de dato erróneo
		Fin Segun
	Hasta Que salir=verdadero; 
	escribir"Gracias por usar nuestro programa";
FinAlgoritmo
