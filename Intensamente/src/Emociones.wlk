object alegria {
	
	method asentarRecuerdoPara(unaPersona,unRecuerdo){
		if (unaPersona.felicidad() > 500){
			unaPersona.agregarPensamientoCentral(unRecuerdo)
		}
	}
	
	method loNiega(unRecuerdo){
		return self != unRecuerdo.emocion()
	}
	
}

object tristeza{
	
	method asentarRecuerdoPara(unaPersona, unRecuerdo){
		unaPersona.agregarPensamientoCentral(unRecuerdo)
		unaPersona.disminuirFelicidad(10)
	}
	
	method loNiega(unRecuerdo){
		return unRecuerdo.emocion() == alegria
	}
}

class Emocion {
	
	method asentarRecuerdoPara(unaPersona,unRecuerdo){
		//NO HACE NADA
	}
	
	method loNiega(unRecuerdo){
		return false
	}
}


const furia    = new Emocion()
const temor    = new Emocion()
const disgusto = new Emocion()
