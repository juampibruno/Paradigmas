class LegionDelTerror {
	
	const miembros = #{}
	
	method capacidadAsustar(){
		return miembros.sum{ unMiembro => unMiembro.capacidadSusto() }
	}
	
		method cantidadCaramelos(){
		return miembros.sum{ unMiembro => unMiembro.caramelos() }
	}
	
	method liderLegion(){
		return miembros.max { unMiembro => unMiembro.capacidadSusto() }
	}
	
	method asustarAdulto(unAdulto){
		unAdulto.asustarse(self.liderLegion())
	}
	
}

//3- No es necesario agregar nada nuevo, Es posible debido a que las colecciones en wollok permiten cualquier tipo 
// de dato dentro de ella, no tienen restricciones