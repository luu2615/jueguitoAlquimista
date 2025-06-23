object protagonista{
  var property position = game.center()
  var plata = 0
  method plata() = plata
  method image() = "protagonista.png"
  method mover(direccion){
	if(self.hayLugarLibreHacia_(direccion))self.position(direccion.siguiente(self.position()))else self.chocarCon_(self.objetoEn_(direccion))
  }
  method hayLugarLibreHacia_(direccion) = game.getObjectsIn(direccion.siguiente(self.position())).size() == 0
}


object izquierda { 
	method siguiente(position) = position.left(1) 
}

object derecha { 
	method siguiente(position) = position.right(1) 
}

object abajo { 
	method siguiente(position) = position.down(1) 
}

object arriba { 
	method siguiente(position) = position.up(1) 
}