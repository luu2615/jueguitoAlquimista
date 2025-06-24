import visual.*
import protagonista.*
import pociones.*
class CalderonVerde inherits Visual(position = game.at(1,4)){
  override method image() = "calderonVerde.png"
  override method efecto() {
    protagonista.agregarPocion(new PocionVerde())
    game.sound("brebaje.wav").play()
  }
}
class CalderonVioleta inherits Visual(position = game.at(2,4)){
  override method image() = "calderonVioleta.png"
  override method efecto() {
    protagonista.agregarPocion(new PocionVioleta())
    game.sound("brebaje.wav").play()
  }
}