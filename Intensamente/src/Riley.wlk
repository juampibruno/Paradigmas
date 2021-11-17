import Recuerdos.*
import Emociones.*
import ProcesoMental.*

class Persona {
	
	var property felicidad
	var emocionDominante
	
	const property recuerdosDelDia = []
	const property pensamientosCentrales = #{}
	const property procesosMentales = #{}
	
	method vivirUnEvento(unaDescripcionEvento){
		recuerdosDelDia.add(new Recuerdo(descripcion = unaDescripcionEvento, emocion = emocionDominante))
	}
	
	
	method agregarPensamientoCentral(unRecuerdo){
		pensamientosCentrales.add(unRecuerdo)
	}
	
	method disminuirPorcentajeFelicidad(unPorcentaje){
		felicidad = felicidad * (1 - unPorcentaje / 100)
		if (felicidad < 1) {
			throw new Exception(message = "La felicidad no puede estar por debajo de 1")
		}
 	}
 	
 	method recurdosRecientes(){
 		return recuerdosDelDia.reverse().take(5)
 	}
 	
 	method agregarRecuerdosDelDia(unRecuerdo){
 		recuerdosDelDia.add(unRecuerdo)
 	}
 	
 	method pensamientosCentralesDificilesDeExplicar(){
 		return pensamientosCentrales.filter({unRecuerdo => unRecuerdo.esDificilDeExplicar()})
 	}
 	
 	method loNiega(unRecuerdo){
 		return emocionDominante.loNiega(unRecuerdo)
 	}
 	
 	method dormir(){
 		procesosMentales.forEach({procesoMental => procesoMental.afectarA(self)})
 	}
 	
 	method asentarTodosLosRecuerdosDelDia(){
 		self.recuerdosDelDia().forEach({unRecuerdo => unRecuerdo.asentarse(self)})
 	}
 	
}

// Riley va a ser una instancia de la clase persona