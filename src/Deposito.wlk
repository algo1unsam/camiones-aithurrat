import Vehiculos.*
import Transportables.*

object deposito {

	var deposito = []

	method recibirCarga(cosa) {
		deposito.add(cosa)
	}

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

