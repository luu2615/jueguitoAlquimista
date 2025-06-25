import visual.*
import protagonista.*
class Mejora inherits Visual(){
  var precio
  method precio() = precio
  method text() = if(self.precio() > 0) self.precio().toString() else ""
  method textColor() = "FFDE59"
  var imagen
  override method image() = imagen
  method pasarAComprada(dineroGastado,imagenNueva) {
    protagonista.removerDinero(dineroGastado)
    precio = 0
    imagen = imagenNueva
    game.sound("afirmativo.wav").play()
  }
  method negarCompra() {
    game.say(self, "No tenes suficientes monedas")
    game.sound("error.wav").play()
  }
}
class Mejora1 inherits Mejora(precio = 100,imagen = "mejora1SinComprar.png",position = game.at(2,0)){
  override method efecto() {
  if(protagonista.dinero() >= self.precio()){
    protagonista.tieneEquipamientoPociones(true)
    self.pasarAComprada(self.precio(), "mejora1Comprada.png")
  } else {
    self.negarCompra()
  }
  }
}
class Mejora2 inherits Mejora(precio = 200,imagen = "mejora2SinComprar.png",position = game.at(3,0)){
  override method efecto() {
  if(protagonista.dinero() >= self.precio()){
    protagonista.tienePocionesValiosas(true)
    self.pasarAComprada(self.precio(), "mejora2Comprada.png")
  } else {
    self.negarCompra()
  }
  }
}
class Mejora3 inherits Mejora(precio = 400,imagen = "mejora3SinComprar.png",position = game.at(4,0)){
  override method efecto() {
  if(protagonista.dinero() >= self.precio()){
    protagonista.tieneEquipamientoIngredientes(true)
    self.pasarAComprada(self.precio(), "mejora3Comprada.png")
  } else {
    self.negarCompra()
  }
  }
}

