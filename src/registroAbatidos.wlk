object registroAbatidos {
	
	const abatidos = [[43, 20221231], [18, 20230101], [49, 20230105], [62, 20230106], [33, 20230107], [39, 20230108]]
	
	method cantidadDeDiasRegistrados() { return abatidos.size() }
	method estaVacioElRegistro() { return abatidos.isEmpty() }
	method algunDiaAbatio(cantidad) { return abatidos.map({ elemento => elemento.get(0) }).any({ elemento => elemento == cantidad }) }
	method primerValorDeAbatidos() { return abatidos.first().get(0) }
	method ultimoValorDeAbatidos() { return abatidos.last().get(0) }
	method maximoValorDeAbatidos() { return abatidos.map({ elemento => elemento.get(0) }).max() }
	method totalAbatidos() { return abatidos.map({ elemento => elemento.get(0) }).sum() }
	method cantidadDeAbatidosElDia(dia) { return abatidos.filter({ elemento => elemento.get(1) == dia }).flatten().get(0) }
	method ultimoValorDeAbatidosConSize() { return abatidos.get(abatidos.size() - 1).get(0) }
	method diasConAbatidosSuperioresA(cuanto) { return abatidos.filter({ elemento => elemento.get(0) > cuanto }).map({ elemento => elemento.get(1) }) }
	method valoresDeAbatidosPares() { return abatidos.filter({ elemento => elemento.get(0).even() }).map({ elemento => elemento.get(0) }) }
	method abatidosSumando(cantidad) { return abatidos.map({ elemento => elemento.get(0) }).map({ elemento => elemento + cantidad }) }
	method abatidosEsAcotada(n1, n2) { return abatidos.map({ elemento => elemento.get(0) }).all({ elemento => elemento.between(n1, n2) }) }
	method algunDiaAbatioMasDe(cantidad) { return abatidos.map( {elemento => elemento.get(0) }).any({ elemento => elemento > cantidad }) }
	method todosLosDiasAbatioMasDe(cantidad) { return abatidos.map({ elemento => elemento.get(0) }).all({ elemento => elemento > cantidad }) }
	method cantidadAbatidosMayorALaPrimera() { return abatidos.map({ elemento => elemento.get(0) }).filter({ elemento => elemento > abatidos.first().get(0) }).size() }
	method esCrack() { 
		self.ordenarRegistro()
		const cantidadAbatidos = abatidos.map({ elemento => elemento.get(0) })
		return cantidadAbatidos.fold(cantidadAbatidos.first(), { elemento1, elemento2 => if(elemento1 < elemento2) elemento2 else elemento1 }).equals(cantidadAbatidos.last())
	}
	method agregarAbatidos(cantidad, dia) { abatidos.add([cantidad, dia]) }
	method ordenarRegistro() { abatidos.sortBy({ elemento1, elemento2 => elemento1.get(1) < elemento2.get(1) }) }
}