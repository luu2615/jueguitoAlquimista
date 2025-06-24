object protagonista{
  var property position = game.center()
  var inventario = []
  var dinero = 0
  method dinero() = dinero
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

  //Logica upgrades
  var property tieneEquipamientoPociones = false
  var property tienePocionesValiosas = false
  //Logica pociones
  method agregarPocion(pocion) {
    if(self.tieneEquipamientoPociones()) {
      inventario.add(pocion)
      inventario.add(pocion)
    } else {
      inventario.add(pocion)
    }
  }
  method pocionesDeColor_(color) = inventario.filter({pocion => pocion.color() == color})
  method cantidadDePociones(color) = self.pocionesDeColor_(color).size()
  method sumaValorPocionesDeColor_(color) = self.pocionesDeColor_(color).sum({pocion => pocion.valor()})
  //Logica compra
  method removerDinero(cantidad) {
    dinero = dinero - cantidad
  }
  //Logica venta y si tiene pociones valiosas adquiere el doble de dinero
  method agregarDinero(cantidad) {
    if(self.tienePocionesValiosas()) {dinero = dinero + cantidad * 2} else {}
  }
  method venderPociones() {
    self.agregarDinero(self.sumaValorPocionesDeColor_("verde"))
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