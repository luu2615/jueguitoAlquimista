object protagonista{
  var property position = game.center()
  var pociones = []
  var ingredientes = []
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
  var property tieneEquipamientoIngredientes = false 
  //Logica ingredientes para pociones
  method agregarIngrediente(ingrediente) {
    if(self.tieneEquipamientoIngredientes()) {
      ingredientes.add(ingrediente)
      ingredientes.add(ingrediente)
      ingredientes.add(ingrediente)
      ingredientes.add(ingrediente)
    } else {
      ingredientes.add(ingrediente)
    }
  }
  method tieneIngredientesDeTipo_(tipo) = self.cantidadDeIngredientes(tipo) > 0
  method ingredientesDeTipo_(tipo) = ingredientes.filter({ingrediente => ingrediente.tipo() == tipo})
  method cantidadDeIngredientes(tipo) = self.ingredientesDeTipo_(tipo).size()
  method consumirIngrediente(tipo) {
    ingredientes.remove(self.ingredientesDeTipo_(tipo).first())
  }
  //Logica pociones
  method agregarPocion(pocion) {
    if(self.tieneEquipamientoPociones()) {
      pociones.add(pocion)
      pociones.add(pocion)
    } else {
      pociones.add(pocion)
    }
  }
  method pocionesDeColor_(color) = pociones.filter({pocion => pocion.color() == color})
  method cantidadDePociones(color) = self.pocionesDeColor_(color).size()
  method sumaValorPocionesDeColor_(color) = self.pocionesDeColor_(color).sum({pocion => pocion.valor()})
  //Logica compra
  method removerDinero(cantidad) {
    dinero = dinero - cantidad
  }
  //Logica venta y si tiene pociones valiosas adquiere el doble de dinero
  method agregarDinero(cantidad) {
    if(self.tienePocionesValiosas()) {dinero = dinero + cantidad * 2} else {dinero = dinero + cantidad}
  }
  method venderPociones() {
    pociones.forEach({pocion => self.venderPocion(pocion)})
  }
  method venderPocion(pocion) {
    self.agregarDinero(pocion.valor())
    pociones.remove(pocion)
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