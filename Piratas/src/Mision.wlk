import Barco.*
import Piratas.*
import CiudadCostera.*

object busquedaDelTesoro{
	
	method EsPirataUtil(unPirata){
		return unPirata.tieneAlgunoDe(["brujula","mapa","botellaDeGrogXD"]) && unPirata.tieneMenosDeXMonedas(6)
	}
	
	
	method esBarcoUtil(unBarco){
		return unBarco.algunTripulanteTieneLLave()
	}
	
}

class ConvertirseEnLeyenda{
	
	const itemObligatorio
	
	method esPirataUtil(unPirata){
		return unPirata.tieneMasDeXItems(10) && unPirata.tiene(itemObligatorio)
	}
	
	method esBarcoUtil(unBarco){
		return true
	}
	
}

class Saqueo{
	const victima
	
		method esPirataUtil(unPirata){
		return unPirata.tieneMenosDeXMonedas(monedasSaqueo.cantidad()) && victima.puedeSerSaquedaPor(unPirata)
	}
	
	method esBarcoUtil(unBarco){
		return victima.esVulnerableA(unBarco)
}

}

object monedasSaqueo {
	var property cantidad
		
}