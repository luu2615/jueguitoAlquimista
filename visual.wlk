class Visual{
  var property position
  method image() = "calderon.png"
  method efecto() {}
}

class Pared inherits Visual(position = game.at(5,0)){
  override method image() = "pared.jpeg"
}