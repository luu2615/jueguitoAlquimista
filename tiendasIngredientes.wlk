import protagonista.*
import visual.*
import ingredientes.*

class TiendaIngredientesBasicos inherits Visual(position = game.at(1,3)){
  override method image() = "ingredientesBasicos.png"
  override method efecto() {
    protagonista.agregarIngrediente(new IngredienteBasico())
    game.sound("obtenido.wav").play()
  }
}
class TiendaIngredientesAvanzados inherits Visual(position = game.at(1,2)){
  override method image() = "ingredientesAvanzados.png"
  override method efecto() {
    protagonista.agregarIngrediente(new IngredienteAvanzado())
    game.sound("obtenido.wav").play()
  }
}
class TiendaIngredientesExperto inherits Visual(position = game.at(1,1)){
  override method image() = "ingredientesExpertos.png"
  override method efecto() {
    protagonista.agregarIngrediente(new IngredienteExperto())
    game.sound("obtenido.wav").play()
  }
}