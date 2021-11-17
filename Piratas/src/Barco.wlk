import Piratas.*
import Mision.*

class BarcoPirata{
	
	var property mision
	var property capacidad
	
	const property piratas = #{}
	
	method cantidadTripulacion(){
		return piratas.size()
	}
	
	method esTemible(){
		return self.puedeRealizarLaMision()
	}
	
	method puedeRealizarLaMision(){
		return mision.esBarcoUtil(self)
	}
	
	
	method tieneSuficienteTripulacion(){
		return piratas.size() > capacidad * 0.9
	}
	
	method tieneLugarEnLaTripulacion(){
		return piratas.size() < capacidad
	}
	
	
	method algunTripulanteTieneLLave(){
		return piratas.tiene("llaveDeCofre")
	}
	
	method incorporarPirata(unPirata){
		if(unPirata.puedePertenecerA(self)){
			piratas.add(unPirata)
		}else{
			throw new Exception(message = "No se puede agregar al pirata")
		}
	}
	
	method cambiarMision(unaMision){
		self.mision(unaMision) 
		piratas.removeAllSuchThat({unPirata => ! unPirata.esUtilPara(unaMision)})
	}
	
	
	method pirataMasEbrioTripulacion(){
		return piratas.max({unPirata => unPirata.ebriedad()})
	}
	
	method anclarseEnCiudad(unaCiudad){
		piratas.forEach({unPirata => unPirata.tomarGrog()})
		piratas.remove(self.pirataMasEbrioTripulacion())
		unaCiudad.sumarHabitante()
	}
	
	method esVulnerableA(unBarco){
		return piratas.size() < unBarco.piratas().size() /2
	}
	
	method puedeSerSaquedaPor(unPirata){
		return unPirata.estaPasadoDeGrog()
	}
	
	method todaLaTripulacionPasadaGrog(){
		return piratas.all({unPirata => unPirata.estaPasadoDeGrog()})
	}
	
	method cuantosTripulantesEstanPasadosDeGrog(){
		return self.tripulantesPasadosDeGrog().size()
	}
	
	
	method tripulantesPasadosDeGrog(){
		return piratas.filter({unPirata => unPirata.estaPasadoDeGrog()})
	}
	
	method cantidadItemsDistintosDeTripulantesPasadosDeGrog(){
		return self.tripulantesPasadosDeGrog().map({unPirata => unPirata.items()}).asSet()
	}
	
	method tripulantePasadoDeGrogCheto(){
		return self.tripulantesPasadosDeGrog().max({unPirata => unPirata.dinero()})
	}
	
	method tripulanteQueInvitoMasGente(){
		return piratas.max { unPirata => self.cuantaGenteInvito(unPirata) }
	}
	
	method cuantaGenteInvito(unPirata){
		return piratas.count { otroTripulante => otroTripulante.fueInvitadoPor(unPirata) }
	}
}