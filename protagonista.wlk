object protagonista{
  var property position = game.center()
  var plata = 0
  var inventario = []
  method plata() = plata
  method image() = "protagonista.png"
  method mover(direccion){
	if(self.hayLugarLibreHacia_(direccion)) self.position(direccion.siguiente(self.position())) else self.chocarCon_(self.objetoEn_(direccion))
  }
  method chocarCon_(objeto) {
    objeto.efecto()
  }
  method hayObjetoEn_(direccion) = game.getObjectsIn(direccion.siguiente(self.position())).isEmpty()
  method objetoEn_(direccion) = game.getObjectsIn(direccion.siguiente(self.position())).first()
  method hayLugarLibreHacia_(direccion) = self.hayObjetoEn_(direccion)

  //Logica pociones
  method agregarPocion(pocion) {
    inventario.add(pocion)
  }
  method pocionesDeColor_(color) = inventario.filter({pocion => pocion.color() == color})
  method cantidadDePociones(color) = self.pocionesDeColor_(color).size()
  method sumaValorPocionesDeColor_(color) = self.pocionesDeColor_(color).sum({pocion => pocion.valor()})
  //Logica venta
  method venderPociones() {
    plata = plata + self.sumaValorPocionesDeColor_("verde")
    self.pocionesDeColor_("verde").forEach({pocionVerde => inventario.remove(pocionVerde)})
  }
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