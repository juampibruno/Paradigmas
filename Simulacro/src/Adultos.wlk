import Ninios.*

class Adulto {
	
	var property cantidadNinosAcarameladosQueIntentaronAsustarloAntes = 0
	
	method tolerancia(){
		return 10 * cantidadNinosAcarameladosQueIntentaronAsustarloAntes
	}
	
	method caramelosQueOtorgan(){
		return self.tolerancia() / 2
	}
	
	method asustarse(unNinio){
		if(unNinio.capacidadSusto() > self.tolerancia() ){
			unNinio.agregarCaramelos(self.caramelosQueOtorgan())
		} else if(unNinio.caramelos() > 15){
			 cantidadNinosAcarameladosQueIntentaronAsustarloAntes ++
		}
	}
	
}

class Abuelo inherits Adulto {
	
	override method caramelosQueOtorgan(){
		return super() / 2
	}
	
	override method asustarse(unNinio){
		unNinio.agregarCaramelos(self.caramelosQueOtorgan())
	}
	
}

class AdultoNecio inherits Adulto {
	
	override method asustarse(unNinio){}
	
}