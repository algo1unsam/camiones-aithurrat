object ruta {

	var limitePeligrosidad = 10

	method cambiarLimite(nuevoLimite) {
		limitePeligrosidad = nuevoLimite
	}

	method limiteRuta() {
		return limitePeligrosidad
	}

}