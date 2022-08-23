import personaje.*
import elementos.*

object luisa {
	var personajeActivo = floki
	
	method personajeActivo(personaje){
		personajeActivo = personaje
	}
	
	method personajeActivo() = personajeActivo
	
	method aparecer(elemento){
		personajeActivo.encontrar(elemento)
	}
}
