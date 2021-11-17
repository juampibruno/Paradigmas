class Persona {
	
	const enfermedades = #{}
	
	var temperatura
	var celulas
	
	method contraer(unaEnfermedad){
		enfermedades.add(unaEnfermedad)
	}
	
	method tieneEnfermedad(unaEnfermedad){
		return enfermedades.contains(unaEnfermedad)
	}
	
	method vivirUnDia(){
		enfermedades.forEach({enfermedad => enfermedad.afectarA(self)})
	}
	
	method aumentarTemperatura(unosGradosCelsius){
		temperatura = 45.min(temperatura + unosGradosCelsius)
	}
	
	method destruirCelulas(unasCelulasAmenazadas){
		celulas = celulas - unasCelulasAmenazadas
	}
	
	method temperatura(){
		return temperatura
	}
	
	method enfermedadQueMasAfecta(){
		return enfermedades.max({enfermedad => enfermedad.cantidadCelulasQueAfecta()})
	}
	
	method cantidadCelulas(){
		return celulas
	}
	
	method estaEnComa(){
		return self.temperatura() == 45 || self.cantidadCelulas() < 1000000
	}
	
	method atenuar(unaCantidadDeDosis){
		enfermedades.forEach({unaEnfermedad => unaEnfermedad.atenuarYRemoverSiEsNecesario(unaEnfermedad,unaCantidadDeDosis)})
	}
	
	method atenuarYRemoverSiEsNecesario(unaEnfermedad,unaCantidadDeDosis){
		unaEnfermedad.atenuar(unaCantidadDeDosis)
		if(unaEnfermedad.estaCurada()){
			enfermedades.remove(unaEnfermedad)
		}
	}
	

}
