class Enfermedad {
	
	var cantidadCelulasQueAfecta
	
	
	method cantidadCelulasQueAfecta(){
		return cantidadCelulasQueAfecta
	}
	
	method atenuar(unasCelulas){
		cantidadCelulasQueAfecta = cantidadCelulasQueAfecta - unasCelulas
	}
	
	method estaCurada(){
		return self.cantidadCelulasQueAfecta() <= 0
	}
	

}


class EnfermedadInfecciosa inherits Enfermedad{
	
	method reproducirse(){
		cantidadCelulasQueAfecta = cantidadCelulasQueAfecta *2
	}
	
	method afectarA(unaPersona){
		unaPersona.aumentarTemperatura(cantidadCelulasQueAfecta / 1000)
	}
	
	method esAgresiva(unaPersona){
		return self.cantidadCelulasQueAfecta() > unaPersona.cantidadCelulas() * 0.1
	}
	
}

class EnfermedadAutoinmune inherits Enfermedad {
	
	
	var cantidadVecesQueAfecto = 0
	
	
	method afectarA(unaPersona){
		unaPersona.destruirCelulas(cantidadCelulasQueAfecta)
		cantidadVecesQueAfecto ++
	}
	
	method esAgresiva(){
		return cantidadVecesQueAfecto > 30
	}
	
	
}