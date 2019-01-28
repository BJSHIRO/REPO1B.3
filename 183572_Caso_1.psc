Algoritmo FAMACIA_AHORRA_MÁS
	Definir inicio,pregunta,producto1,producto2,producto3,producto4 Como Caracter
	Definir paracetamol,jaraba,suero,desodorante,total Como Entero
	Definir puntos_paracetamol,puntos_jarabe, monedero Como Real
	monedero <- 100.00
	paracetamol <- 45
	jarabe <- 75
	suero <- 18
	desodorante <- 35
	puntos_paracetamol <- paracetamol*.15
	puntos_jarabe <- jarabe*.15
	Escribir 'BUENAS TARDES,¿CUENTA CON MONEDERO ELECTRÓNICO?'
	Leer inicio
	Si inicio>='si' Entonces
		Escribir 'Los precios de los productos son los siguientes'
		Escribir 'Paracetamol: $',paracetamol,'.00 pesos.'
		Escribir 'Jarabe para la tos: $',jarabe,'.00 pesos'
		Escribir 'Sueros de distintos sabores: $',suero,'.00 pesos'
		Escribir 'desodorantes: $',desodorante,'.00 pesos'
		Escribir '________________________________________________________'
		Escribir 'Los siguientes productos le abonan el %15 de su precio a su monedero electrónico:'
		Escribir 'Paracetamol.'
		Escribir 'Jarabe para la tos.'
		Escribir 'Su monedero cuenta con:  $',monedero,'.00 ¿Desea utilizarlos para realizar su pago?'
		Leer pregunta
		Si pregunta>='si' Entonces
			Escribir '¿Desea comprar paracetamol?'
			Leer producto1
			Si producto1>='si' Entonces
				Escribir '¿Desea comprar algún jarabe para la tos?'
				Leer producto2
				Si producto2>='si' Entonces
					Escribir '¿Desea comprar algún suero?'
					Leer producto3
					Si producto3>='si' Entonces
						Escribir '¿Desea comprar algún desodorante?'
						Leer producto4
						Si producto4>='si' Entonces
							Escribir 'Solo puede comprar 3 productos'
						SiNo
							total <- paracetamol+jarabe+suero-monedero
							monedero <- monedero-100+puntos_paracetamol+puntos_jarabe
							Escribir 'Resta pagar en efectivo: $',total,'.00',' pesos'
							Escribir 'Su saldo actual en su monedero es de: $',monedero,'.00 pesos'
						FinSi
					SiNo
						Escribir '¿Desea comprar algún desodorante?'
						Leer producto4
						Si producto4>='si' Entonces
							total <- paracetamol+jarabe+desodorante-monedero
							monedero <- monedero-100+puntos_jarabe+puntos_paracetamol
							Escribir 'Resta pagar en efectivo: $',total,'.00',' pesos.'
							Escribir 'Su saldo actual es de: $',monedero,'.00 pesos.'
						SiNo
							Escribir 'Debe de comprar 3 productos para poder darle el servicio'
						FinSi
					FinSi
				SiNo
					Escribir '¿Desea comprar algún suero?'
					Leer producto3
					Si producto3>='si' Entonces
						Escribir '¿Desea comprar algún desodorante?'
						Leer producto4
						Si producto4>='si' Entonces
							total <- paracetamol+suero+desodorante
							monedero <- monedero-total
							Escribir 'Su saldo en el monedero fue suficiente para pagar su cuenta'
							Escribir 'Resta en su monedero: $',monedero,'.00','pesos'
							monedero <- monedero+puntos_paracetamol
							Escribir "Su saldo actual en el monedero es de: $",monedero " pesos."
						SiNo
							Escribir 'Debe de comprar 3 productos para poder darle el servicio'
						FinSi
					SiNo
						Escribir 'Debe comprar 3 productos para poderle dar el servico'
					FinSi
				FinSi
			SiNo
				Escribir '¿Desea comprar un jarabe para la tos?'
				Leer producto2
				Si producto2>='si' Entonces
					Escribir '¿Desea comprar algún suero?'
					Leer producto3
					Si producto3>='si' Entonces
						Escribir '¿Desea comprar un desodorante?'
						Leer producto4
						Si producto4='si' Entonces
							total <- jarabe+suero+desodorante-monedero
							monedero <- monedero-100+puntos_jarabe
							Escribir 'Resta por pagar en efectivo: $',total,'.00',' pesos'
							Escribir 'Su monedero cuenta actualmente con: $',monedero,' pesos.'
						SiNo
							Escribir 'Debe comprar 3 productos para que se le pueda dar el servicio'
						FinSi
					SiNo
						Escribir 'Debe comprar 3 producto para continuar con el servicio de cobro'
					FinSi
				SiNo
					Escribir 'Debe comprar 3 productos para acceder al servicio de cobro'
				FinSi
			FinSi
		SiNo
			Escribir '¿Desea comprar Paracetamol?'
			Leer producto1
			Si producto1>='si' Entonces
				Escribir '¿Desea comprar algún jarabe para la tos?'
				Leer producto2
				Si producto2>='si' Entonces
					Escribir '¿Desea comprar algún suero?'
					Leer producto3
					Si producto3>='si' Entonces
						Escribir '¿Desea comprar algún desodorante?'
						Leer producto4
						Si producto4>='si' Entonces
							Escribir 'Solo puede comprar 3 productos'
						SiNo
							total <- paracetamol+jarabe+suero
							monedero <- monedero+puntos_paracetamol+puntos_jarabe
							Escribir 'Su total es de: $',total,'.00',' pesos'
							Escribir 'Su saldo total en su monedero es de: $',monedero,'.00 pesos.'
						FinSi
					SiNo
						Escribir '¿Desea comprar algún desodorante?'
						Leer producto4
						Si producto4>='si' Entonces
							total <- paracetamol+jarabe+desodorante
							monedero <- monedero+puntos_paracetamol+puntos_jarabe
							Escribir 'Su total es de: $',total,'.oo',' pesos.'
							Escribir 'Su saldo total en su monedero es de: $',monedero,'.00 pesos.'
						SiNo
							Escribir 'Debe de comprar 3 productos para poder darle el servicio'
						FinSi
					FinSi
				SiNo
					Escribir '¿Desea comprar algún suero?'
					Leer producto3
					Si producto3>='si' Entonces
						Escribir '¿Desea comprar algún desodorante?'
						Leer producto4
						Si producto4>='si' Entonces
							total <- paracetamol+suero+desodorante
							monedero <- puntos_paracetamol+monedero
							Escribir 'Su total es de: $',total,'.00','',pesos
							Escribir 'Su saldo total en su monedero es de: $',monedero,' pesos.'
						SiNo
							Escribir 'Debe de comprar 3 productos para poder darle el servicio'
						FinSi
					SiNo
						Escribir 'Debe comprar 3 productos para poderle dar el servico'
					FinSi
				FinSi
			SiNo
				Escribir '¿Desea comprar un jarabe para la tos?'
				Leer producto2
				Si producto2>='si' Entonces
					Escribir '¿Desea comprar algún suero?'
					Leer producto3
					Si producto3>='si' Entonces
						Escribir '¿Desea comprar un desodorante?'
						Leer producto4
						Si producto4='si' Entonces
							total <- jarabe+suero+desodorante
							monedero <- puntos_jarabe+monedero
							Escribir 'Su total es de: $',total,'.00',' pesos'
							Escribir 'Su saldo actual en su monedero es de: $',monedero,' pesos'
						SiNo
							Escribir 'Debe comprar 3 productos para que se le pueda dar el servicio'
						FinSi
					SiNo
						Escribir 'Debe comprar 3 producto para continuar con el servicio de cobro'
					FinSi
				SiNo
					Escribir 'Debe comprar 3 productos para acceder al servicio de cobro'
				FinSi
			FinSi
		FinSi
	SiNo
		Escribir 'Efectuar el cobró normal'
	FinSi
FinAlgoritmo

