import Elementos.*
import Adultos.*

class Ninioo{
	
	var property actitud
	var property caramelos

	
	const elementos = []
	
	
	method capacidadSusto(){
		return elementos.sum{ unElemento => unElemento.asusta() } * actitud
	}
	
	method asustarAdulto(unAdulto){
		unAdulto.asustarse(self)
	}
	
	method agregarCaramelos(unosCaramelos){
		caramelos = caramelos + unosCaramelos
	}
		
	method comerCaramelos(unosCaramelos){
		if(caramelos >= unosCaramelos){
			caramelos = caramelos - unosCaramelos
		}else{
			throw new Exception(message = "No tiene esa cantidad de caramelos")
		}
	}
}

