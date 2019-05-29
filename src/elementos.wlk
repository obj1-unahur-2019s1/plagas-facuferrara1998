import plagas.*

class Hogar {
	
	var property nivelMugre 
	var property confortOfrecido 
	
	method 	esBueno() = nivelMugre <= confortOfrecido / 2
	
	method recibirAtaque(){}
}
class Huerta {
	
	var property capacidadProduccion
	const nivelMinimo = 20
	
	method esBueno()=capacidadProduccion > nivelMinimo 
	
	method recibirAtaque(){}

}

object reguladorHuerta{ 
	
	var property nivelMinimo = 20
	
}

class Mascota {
	
	var nivelSalud
	const nivelMinimo = 250
	
	method esBueno(){ return
		nivelSalud > nivelMinimo
	}
	
	method recibirAtaque(){ }
}

class Barrio {
	var elementos
	
	method esCopado() = self.elementosBuenos() > self.elementosMalos()
	method elementosBuenos()=elementos.count{e => e.esBueno()}
	method elementosMalos() = elementos.size() - self.elementosBuenos()
	
}