import visual.*
import protagonista.*
import calderones.*

class IconoPocionVerde inherits Visual(position = game.at(1,5)){
  override method image() = "Icon3.png"
  method text() = protagonista.cantidadDePociones("verde").toString()
  method textColor() = "00FF00FF"
}
class IconoPocionVioleta inherits Visual(position = game.at(2,5)){
  override method image() = "Icon11.png"
  method text() = protagonista.cantidadDePociones("violeta").toString()
  method textColor() = "CC6CE7"
}
class IconoMoneda inherits Visual(position = game.at(4,5)){
  override method image() = "moneda.png"
  method text() = protagonista.dinero().toString()
  method textColor() = "FFDE59"
}