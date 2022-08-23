import armas.*
import elementos.*

object floki {
	var arma = ballesta
	method encontrar(elemento){
		if(arma.estaCargada()){
			elemento.recibirAtaque(arma)
			arma.usarArma()
		}
	}
	method cambiarArma(nuevaArma){
		arma = nuevaArma
	}	
	
}

object mario{
	var valorRecolectado = 0
	var ultimoEncontrado
	
	method encontrar(elemento){
		valorRecolectado += elemento.valorOtorgado()
		elemento.recibirTrabajo()
		ultimoEncontrado = elemento
	}
	method estaFeliz(){
		return valorRecolectado >= 50 or ultimoEncontrado.altura() >=10
	}
	method valorRecolectado() = valorRecolectado
}