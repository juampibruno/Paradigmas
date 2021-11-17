import persona.*

class Medico inherits Persona {
	
	var dosis
	
	method atenderA(unaPersona){
		unaPersona.atenuar(dosis * 15)
	}
	
	
	override method contraer(unaEnfermedad){
		super(unaEnfermedad) // si yo pongo self.contraer(unaEnfermedad) entra en un bucle infinito por eso uso el super
		self.atenderA(self)
	}
}

class JefeDeDepartamento inherits Medico {
	
	const subordinados = #{}
	
	override method atenderA(unaPersona){
		subordinados.anyOne().atenderA(unaPersona)
	}
	
	method agregarSubordinado(unSubordinado){
		subordinados.add(unSubordinado)
	}
}
