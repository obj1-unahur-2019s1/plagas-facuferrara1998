import elementos.*

class Plaga {
	var property poblacion   //atributo
	method transmiteEnfermedades() = poblacion >= 10	//				//es como sacar factor comun
	
	method atacar(elemento){
		poblacion += poblacion * 0.1
		
	}
	method nivelDeDanio()=  poblacion * 2
	
	method recibirAtaque(plaga){plaga.atacar(self)}//o es atacado
}


class PlagaCucaracha inherits Plaga{
	

	var property pesoPromedio
	
	override method transmiteEnfermedades()= super() and pesoPromedio >= 10
	method nivelDanino(){return poblacion / 2}
	override method atacar(elemento){
		super(elemento)
		pesoPromedio += 2
	}
	
}

class PlagaPulgas inherits Plaga{

	override method nivelDeDanio(){return  poblacion * 2}
	
}

class PlagaGarrapatas inherits Plaga{
	
	override method atacar(elemento){
		poblacion += poblacion * 0.2
	}
}

class PlagaMosquitos inherits Plaga{
	
	override method nivelDeDanio(){return poblacion }
	
	override method transmiteEnfermedades()= super() and poblacion % 3 == 0
	
}

