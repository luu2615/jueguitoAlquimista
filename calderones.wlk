import visual.*
import protagonista.*
import pociones.*
class CalderonVerde inherits Visual(position = game.at(2,4)){
  override method image() = "calderonVerde.png"
  override method efecto() {
    if(protagonista.tieneIngrediente("basico")){
      protagonista.agregarPocion(new PocionVerde()) 
      game.sound("brebaje.wav").play()
      } else {
        
      }

  }
}
class CalderonVioleta inherits Visual(position = game.at(3,4)){
  override method image() = "calderonVioleta.png"
  override method efecto() {
    protagonista.agregarPocion(new PocionVioleta())
    game.sound("brebaje.wav").play()
  }
}