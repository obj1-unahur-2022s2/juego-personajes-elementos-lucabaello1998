import armas.*

object castillo {
	var nivelDefensa = 150
	
	method altura() = 20
	method recibirAtaque(unArma){
		nivelDefensa = 0.max(nivelDefensa - unArma.potenciaDelAtaque())
	}
	method valorOtorgado() = nivelDefensa/5
	method recibirTrabajo(){
		nivelDefensa = 200.min(nivelDefensa+20)
	}
	method nivelDefensa() = nivelDefensa
}

object aurora {
	var estaViva = true
	method altura() = 1
	method recibirAtaque(unArma){
		if(unArma.potenciaDelAtaque() >= 10 and estaViva){
			estaViva = false
		}
	}
	method valorOtorgado() = 15
	method recibirTrabajo(){}
	method estaViva() = estaViva
}

object tipa {
	var altura = 8
	method altura() = altura
	method recibirAtaque(unArma){
		
	}
	method valorOtorgado() = altura * 2
	method recibirTrabajo(){
		altura++
	}
}