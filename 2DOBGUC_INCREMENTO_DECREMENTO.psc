Proceso union_desechos_incremento_decremento
	
	// D E F I N I C I Ó N
	
	definir nme, dini, pini, dfin, base, x, xp, pm, i, incredecre, xdf como real;
	Dimension dfin[100];
	
	//I N G R E S O   D E   D A T O S
	
	
	escribir "Por favor, ingrese la cantidad de desechos sólidos (Kilos):";
	leer dini;
	
	
	Repetir
		
		Escribir "¿Desea visualizar un porcentaje de incremento (1) o decremento (2)?:";
		Leer incredecre;
		
		
		Si incredecre <> 1 y incredecre <> 2 Entonces
			
			
			Escribir "Por favor, ingrese un dato válido";
			
			
		SiNo
			
			
			Si incredecre = 1 Entonces
				
				escribir "Ingrese porcentaje de incremento por mes:";
				leer pm;
				
			SiNo
				
				escribir "Ingrese porcentaje de decremento por mes:";
				leer pm;
				
			FinSi
			
			
		FinSi
		
	Hasta Que incredecre = 1 o incredecre = 2
	
	
	escribir "Cantidad de meses:";
	leer nme;
	
	
	Si incredecre = 1 Entonces
		
		
		//P R O C E D I M IE N T O
		
		
		pini <- pm / 100;
		
		base <- 1 + pini;
		
		para x <- 0 hasta nme - 1 Hacer
			
			xp<-1;
			
			para i<-1 hasta x + 1 Hacer
				
				xp <- xp * base;
				
			FinPara
			
			xdf <- dini * xp;
			
			dfin[x] <- redon(xdf * 100) / 100;
			
		FinPara
		
		//S A L I D A
		
		Limpiar Pantalla;
		
		Escribir "Valores generados:";
		
		Escribir "______________________________________";
		
		para x<-0 hasta nme - 1 Hacer
			escribir "Cantidad de desechos generados el mes ", x + 1, ": ", dfin[x], " Kg";
		FinPara
		
		
		Escribir "______________________________________";
		
		
		
	SiNo	
		
		//P R O C E D I M IE N T O
		
		
		pini <- pm / 100;
		
		base <- 1 - pini;
		
		para x <- 0 hasta nme - 1 Hacer
			
			xp<-1;
			
			para i<-1 hasta x + 1 Hacer
				
				xp <- xp * base;
				
			FinPara
			
			xdf <- dini * xp;
			
			dfin[x] <- redon(xdf * 100) / 100;
			
		FinPara
		
		//S A L I D A
		
		Limpiar Pantalla;
		
		Escribir "Valores generados:";
		
		Escribir "______________________________________";
		
		para x<-0 hasta nme - 1 Hacer
			escribir "La cantidad de desechos generados en el mes ", x + 1, " es de: ", dfin[x], " Kg";
		FinPara
		
		
		Escribir "______________________________________";
		
	FinSi
	

FinProceso