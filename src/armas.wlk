object ballesta {
	var cantidadFlechas = 10
	const potencia = 4
	method estaCargada() = cantidadFlechas > 0 //getter
	method usarArma(){
		cantidadFlechas--
	}
	method potenciaDelAtaque() = potencia
}

object jabalina {
	var estaCargada = true
	const potencia = 30
	method estaCargada() = estaCargada
	method usarArma(){
		estaCargada = false
	}
	method potenciaDelAtaque() = potencia
}