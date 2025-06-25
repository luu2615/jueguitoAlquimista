import protagonista.*
import visual.*
import ingredientes.*
class TiendaIngredientes inherits Visual(){
  method precio()
  method text() = if(self.precio() > 0) self.precio().toString() else ""
  method textColor() = "FFDE59"
}
class TiendaIngredientesBasicos inherits TiendaIngredientes(position = game.at(1,3)){
  override method image() = "ingredientesBasicos.png"
  override method precio() = 0
  override method efecto() {
    protagonista.agregarIngrediente(new IngredienteBasico())
    game.sound("obtenido.wav").play()
  }
}
class TiendaIngredientesAvanzados inherits TiendaIngredientes(position = game.at(1,2)){
  override method image() = "ingredientesAvanzados.png"
  override method precio() = 20
  override method efecto() {
    protagonista.removerDinero(self.precio())
    protagonista.agregarIngrediente(new IngredienteAvanzado())
    game.sound("obtenido.wav").play()
  if(protagonista.dinero() >= self.precio()){
    protagonista.removerDinero(self.precio())
    protagonista.agregarIngrediente(new IngredienteAvanzado())
    game.sound("obtenido.wav").play()
  } else {
    self.negarCompra()
  }
}
class TiendaIngredientesExperto inherits TiendaIngredientes(position = game.at(1,1)){
  override method image() = "ingredientesExpertos.png"
  override method precio() = 100
  override method efecto() {
    protagonista.removerDinero(self.precio())
    protagonista.agregarIngrediente(new IngredienteExperto())
    game.sound("obtenido.wav").play()
  }
}