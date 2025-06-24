import protagonista.*
class Visual{
  var property position
  method image() = "calderon.png"
  method efecto() {}
}
class Pocion{
  method valor()
  method color() 
}
class PocionVerde inherits Pocion{
  override method valor() = 100
  override method color() = "verde"
}
class CajaVenta inherits Visual(position = game.at(8,4)){
  override method image() = "cajaVentas.png"
}
class CalderonVerde inherits Visual(position = game.at(2,7)){
  override method image() = "calderonVerde.png"
  override method efecto() {
    protagonista.agregarPocion(new PocionVerde())
  }
}