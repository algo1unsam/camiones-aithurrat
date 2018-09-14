import Transportables.*
import Rutas.*
import Deposito.*

object camion {

	var cargas = []
	var cargaMaxima = 1000

	method cargarCosa(cosa) {
		if (cosa.peso() > self.cargaDisponible()) {
			error.throwWithMessage("no hay carga disponible")
		} else {
			cargas.add(cosa)
		}
	}

	method descargarCosa(cosa) {
		cargas.remove(cosa)
	}

	method verCosa(cosa) {
		return cargas.contains(cosa)
	}

	method verCarga() {
		return cargas
	}

	method pesoTotal() {
		return cargas.sum({ cosa => cosa.peso() })
	}

	method cargaDisponible() {
		return cargaMaxima - self.pesoTotal()
	}

	method cosaMasPeligrosa() {
		return cargas.max({ cosa => cosa.peligrosidad() })
	}

	method circularPorRuta(ruta) {
		return self.cosaMasPeligrosa() > ruta.limiteRuta()
	}

}

object motoneta {

	var cargaMaxima = 100
	var cargasMotoneta = []
	var limitePeligrosidad = 5

	method cargarCosa(cosa) {
		if (cosa.peso() >= self.cargaDisponible() && cosa.peligrosidad() >= self.peligrosidadMaxima()) {
			error.throwWithMessage("no hay carga disponible o carga muy peligrosa")
		} else {
			cargasMotoneta.add(cosa)
		}
	}

	method pesoTotal() {
		return cargasMotoneta.sum({ cosa => cosa.peso() })
	}

	method cargaDisponible() {
		return cargaMaxima - self.pesoTotal()
	}

	method peligrosidadMaxima() {
		return limitePeligrosidad
	}

	method verCarga() {
		return cargasMotoneta
	}

}

