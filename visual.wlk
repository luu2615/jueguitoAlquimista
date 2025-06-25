import protagonista.*
class Visual{
  var property position
  method image() = "calderon.png"
  method efecto() {}
}
class CajaVenta inherits Visual(position = game.at(5,2)){
  override method image() = "cajaVentas.png"
    override method efecto() {
    protagonista.venderPociones()
    game.sound("vender.wav").play()
  }
}

class Pared inherits Visual(position = game.at(0,0)){
  override method image() = "pared.png"
}