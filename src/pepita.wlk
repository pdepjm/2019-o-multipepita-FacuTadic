object pepita {
	var energia = 0

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	
	method estaFeliz(){
		return energia.between(500,1000)
	}		
	
	method cuantoQuiereVolar(){
		var kms
			
		kms= energia/5
				
		if(energia.between(300,400)){
			kms+=10
		}
		if(energia % 20 == 0){
			kms+=15
		}
		
		return kms
	}
	
	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method haceLoQueQuieras(){
		
		if(self.estaFeliz()){	
			self.vola(8)
		}else if(self.estaCansada()){
			self.come(alpiste)
		}
	}	
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo{
	var energiaMijo
	method mojarse(){
		 energiaMijo=15
	}
	method secarse(){
		energiaMijo=20
	}
	
	method energiaQueOtorga(){
		return energiaMijo
	}

}



object canelones{
	var energiaCanelon = 20
	
	method ponerSalsa(){
		energiaCanelon += 5
	}
	
	method sacarSalsa(){
		energiaCanelon -= 5 
	}
	
	method ponerQueso(){
		energiaCanelon += 7 
	}
		
	method sacarQueso(){
		energiaCanelon -= 7 
	}
	method energiaQueOtorga(){
		return energiaCanelon
	}
}


object roque {
	method entrenar(ave){
		ave.vola(10)
		ave.come(alpiste)
		ave.vola(5)
		ave.hacerLoQueQiera()
		
	}
}













