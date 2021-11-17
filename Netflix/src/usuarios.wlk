class Usuario {
	
	var property dinero
	var property tipoSuscripcion
	var humor = 100
	
	method puedePagarLaSuscrpcion(){
		return tipoSuscripcion.precio() < dinero
	}
	
	method pagarSuscripcion(){
		dinero = dinero - tipoSuscripcion.precio()
	}
	
	method actualizarSuscripcion (unaSuscripcion){
		self.tipoSuscripcion(unaSuscripcion)
	}
	
	
	method jugar(unJuego,unasHoras){
		if(tipoSuscripcion.permiteJugarA(unJuego)){
			unJuego.serJugado(self,unasHoras)	
		}else{
			throw new Exception(message = "Su suscripcion no le permite jugar a ese juego")
		}
		
	}
	
	method reducirHumor(cantidad){
		humor = humor - cantidad
	}
	
	
	method aumentarHumor(cantidad){
		humor = humor + cantidad
	}
	
	method comprarSkins(){
		if (dinero >= 30){
			dinero = dinero - 30
		}
	}
	
}




object premium {
	
	var property precio = 50
	
	method permiteJugarA(unJuego){
		return true
	}
	
}

object base {
	
	var property precio = 25
	
	method permiteJugarA(unJuego){
		return unJuego.esBarato()
	}
	
}


class SuscrpcionCategorica{
	var property precio 
	const categoria
	
		method permiteJugarA(unJuego){
		return unJuego.esCategoria(categoria)
	}
	
}


const prueba = new SuscrpcionCategorica(precio = 0 , categoria = "Demo")
const infantil = new SuscrpcionCategorica(precio = 10 , categoria = "Infantil")


