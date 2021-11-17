import Piratas.*

class CiudadCostera{
	
	var property habitantes
	
	method puedeSerSaquedaPor(unPirata){
		unPirata. tieneAlMenosXNivelEbriedad(50)
	}
	
	method esVulnerableA(unBarco){
		return self.sonPocosContraBarco(unBarco) || unBarco.todaLaTripulacionPasadaGrog()
	}
	
	method sonPocosContraBarco(unBarco){
		return habitantes * 0.4 < unBarco.cantidadTripulacion()
	}
	
	method sumarHabitante(){
		habitantes += 1
	}
	
}