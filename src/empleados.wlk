object galvan {
	var sueldo = 15000
	var dinero = 0
	var deuda = 0
		
	//GETTER
	method sueldo() { return sueldo	}
	//SETTER
	method sueldo(nuevoValor) {	sueldo = nuevoValor	}
	
	method opeDeuda() { return sueldo - deuda}
	
	method cobrarSueldo(){
				
		if (self.opeDeuda() > 0 ) {
			dinero = dinero + self.opeDeuda()
			deuda = 0
		}
		else{
			deuda = (self.opeDeuda()).abs()
			dinero = 0
		}	
	}
	
	method gastar(cantidad){
		deuda = (deuda + cantidad)
		
		if (dinero >0){
			dinero = dinero - deuda
			if ( dinero - deuda < 0){
				deuda = dinero.abs()
				dinero = 0
			}
			else{
				deuda = 0
			}
		}
	}
	
	method totalDeuda(){ return deuda }
	method totalDinero(){ return dinero }
}

object baigorria {
	var cantidadEmpanadasVendidas = 0
	const montoPorEmpanada = 15
	var totalCobrado = 0

	method venderEmpanadas(cuantas) {
		cantidadEmpanadasVendidas += cuantas
	}

	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method cobrarSueldo(){
		totalCobrado = totalCobrado + self.sueldo()
		cantidadEmpanadasVendidas = 0	
		return totalCobrado
	}
}

object gimenez {
	var dinero = 300000

	method dinero() { return dinero	}

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}

