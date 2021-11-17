import usuarios.*

class Juegos{
	
	const property nombre
	var precio
	const property categoria
	
	method esCategoria(unaCategoria){
		categoria == unaCategoria
	}
	
	method esBarato(){
		return 	precio < 30
	}

		
	method cobrarSuscripcion(unUsuario){
		if(unUsuario.puedePagarLaSuscripcion()){
			unUsuario.pagarSuscripcion()
		}
		else{
			unUsuario.actualizarSuscripcion(prueba)
		}
	}
	
	method seLlama(unNombre){
		return nombre == unNombre
	}
}

class JuegoViolento inherits Juegos {
	
	method serJugado(unUsuario,horasJugadas){
		unUsuario.reducirHumor(10*horasJugadas)
	}

}

class Moba inherits Juegos {
	
	method serJugado(unUsuario,horasJugadas){
		unUsuario.comprarSkins()
	}

}

class JuegoTerror inherits Juegos {
	
	method serJugado(unUsuario,horasJugadas){
		unUsuario.actualizarSuscripcion(infantil)
	}

}

class JuegoEstrategico inherits Juegos {
	
	method serJugado(unUsuario,horasJugadas){
		unUsuario.aumentarHumor(5*horasJugadas)
	}

}



object gameFlix {
	
	const juegos = #{}
	
	method juegosSegunCategoria(unaCategoria){
		
		return juegos.filter({unJuego=> unJuego.esCategoria(unaCategoria)})
		
	}
	
	method buscarJuego (unNombre){
		
		return juegos.findOrElse({unJuego => unJuego.seLlama(unNombre)}, {throw new Exception(message = "No se encuentra ningun juego con ese nombre")})
	}
	
	method recomendarJuegoAlAzar(){
		return juegos.anyOne()
		
	}
	
}

