class Pirata {
	
	var property ebriedad
	var property dinero
	const property invitadoPor
	
	const property items 
	
	
	method esUtilParaMision(unaMision){
		return unaMision.esPirataUtil(self)
	}
	
	method tiene(unItem){
		return items.contains(unItem)
	}
	
	method tieneAlgunoDe(unosItems){
		return items.any({unItem => self.tiene(unItem)})
	}
		
	method tieneMasDeXItems(cantidadItems){
		return items.size() > cantidadItems
	}
	
	
	method puedePertenecerA(unBarco){
		return unBarco.tieneLugarEnLaTripulacion() && self.esUtilParaMision(unBarco.mision())
	}
	
	method tomarGrog(){
		dinero = dinero - 1 
		ebriedad = ebriedad + 5
	}
	
	method tieneMenosDeXMonedas(cantidad){
		return dinero < cantidad
	}
	
	method tieneAlMenosXNivelEbriedad(cantidad){
		return ebriedad >= cantidad
	}
	
	method estaPasadoDeGrog(){
		return self.tieneAlMenosXNivelEbriedad(90)
	}
	
	method fueInvitadoPor(unPirata){
		return invitadoPor == unPirata
	}
}
