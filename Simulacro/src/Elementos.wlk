class Maquillaje{
	
	method asusta(){
		return 3
	}
	
}

class Traje {
	
	method asusta()
	
}

class TrajeTierno inherits Traje {
	
	override method asusta(){
		return 2
	}
	
}

class TrajeTerrorifico inherits Traje {
	
	override method asusta(){
		return 5
	}
	
}