class Barrio {
	
	const nombre
	
	const  niniosDelBarrio = #{}
	
	method losNiniosDelBarrioOrdenadaCaramelos(){
		return niniosDelBarrio.sortedBy({ unNinio, otroNinio => unNinio.caramelos() > otroNinio.caramelos() })
	}
	
	method los3MasAcaramelados(){
		return self.losNiniosDelBarrioOrdenadaCaramelos().take(3)
	}
	
	method ninosAcaramelados(){
		return niniosDelBarrio.filter {unNinio => unNinio.caramelos() > 10}
	}
	
	method elementosDeLosAcaramelados(){
		return self.ninosAcaramelados().map{unNinio => unNinio.elementos()}.asSet()
	}
}