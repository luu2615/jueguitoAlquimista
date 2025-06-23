class Visual{
  var property position
  method image() = "calderon.png"
}
class CajaVenta inherits Visual(position = game.at(8,4)){
  override method image() = "cajaVentas.png"
}
class CalderonVerde inherits Visual(position = game.at(2,7)){
  override method image() = "calderonVerde.png"
}