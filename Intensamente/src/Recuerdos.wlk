
class Recuerdo {
	const property descripcion
	const property emocion
	const property fecha = new Date()
	
	method asentarse(unaPersona){
		emocion.asentarRecuerdoPara(unaPersona)
	}
	
	method esDificilDeExplicar(){
		return self.cantidadDePalabras() > 10
	}
	
	method cantidadDePalabras(){
		return descripcion.words().size()
	}
}


