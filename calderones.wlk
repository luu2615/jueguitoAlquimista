import visual.*
import protagonista.*
class Pocion{
  method valor()
  method color() 
}
class PocionVerde inherits Pocion{
  override method valor() = 10
  override method color() = "verde"
}
class CajaVenta inherits Visual(position = game.at(4,2)){
  override method image() = "cajaVentas.png"
    override method efecto() {
    protagonista.venderPociones()
    game.sound("vender.wav").play()
  }
}
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