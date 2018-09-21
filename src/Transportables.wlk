object knightRider {

	var peso = 500
	var peligrosidad = 10

	method peso() {
		return peso
	}

	method peligrosidad() {
		return peligrosidad
	}

}

object bumblebee {

	var peso = 800
	var estado = auto

	method peso() {
		return peso
	}

	method transformar(transformar) {
		estado = transformar
	}

	method peligrosidad() {
		return estado.peligrosidad()
	}

}

object auto {

	method peligrosidad() {
		return 15
	}

}

object robot {

	method peligrosidad() {
		return 30
	}

}

object ladrillos {

	var peso = 2
	var cantLadrillos = 10
	var peligrosidad = 2

	method peso() {
		return peso * cantLadrillos
	}

	method peligrosidad() {
		return peligrosidad
	}

	method cantLadrillos(cant) {
		cantLadrillos = cant
	}

}

// TODO la idea era que el contenedor tenga una lista de las cosas que contiene
// por otro lado al hacer peso(cosa) perdiste el polimorfismo, el contenedor
// no es polimórfico con los demas transportables
object contenedorPortuario {

	var peso = 100
	var peligrosidad = 0

	method peso(cosa) {
		return peso + cosa.peso()
	}

	method cuanPeligroso(cosa) {
		peligrosidad = cosa.peligrosidad()
	}

	method peligrosidad() {
		return peligrosidad
	}

}

// TODO lo mismo acá, la idea es tener configurada la cosa ADENTRO de este objeto
// así acá también se puede mantener el polimorfismo
object embalajeSeguridad {

	var peso = 0
	var peligrosidad = 0

	method pesoEmbalaje(cosa) {
		peso = cosa.peso()
	}

	method peso() {
		return peso
	}

	method cuanPeligroso(cosa) {
		peligrosidad = cosa.peligrosidad() / 2
	}

	method peligrosidad() {
		return peligrosidad
	}

}

