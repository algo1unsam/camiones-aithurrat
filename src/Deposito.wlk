import Vehiculos.*
import Transportables.*

object deposito {

	var deposito = []

	// TODO la idea era recibir una lista, por que sino sólo podes agregar de a una
	// cosa y la idea es que se puedan agregar de a muchas
	method recibirCarga(cosa) {
		deposito.add(cosa)
	}

	// TODO acá si el transportable llegaba por parámetro 
	// te ahorrabas poner los dos método iguales
	
	method cargarCamion() {
		deposito.forEach({ cosa =>
			camion.cargarCosa(cosa)
			deposito.remove(cosa)
		})
	}

	method cargarMotoneta() {
		deposito.forEach({ cosa =>
			motoneta.cargarCosa(cosa)
			deposito.remove(cosa)
		})
	}

	method verDeposito() {
		return deposito
	}

}

