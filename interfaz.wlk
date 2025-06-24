import visual.*
import protagonista.*
import calderones.*

class IconoPocionVerde inherits Visual(position = game.at(2,5)){
  override method image() = "PocionVerde.png"
  method text() = protagonista.cantidadDePociones("verde").toString()
  method textColor() = "ffffff"
}
class IconoPocionVioleta inherits Visual(position = game.at(3,5)){
  override method image() = "PocionVioleta.png"
  method text() = protagonista.cantidadDePociones("violeta").toString()
  method textColor() = "ffffff"
}
class IconoMoneda inherits Visual(position = game.at(4,5)){
  override method image() = "moneda.png"
  method text() = protagonista.dinero().toString()
  method textColor() = "FFDE59"
}

class IconoIngredienteBasico inherits Visual(position = game.at(2,5)){
  override method image() = "ingredienteBasico.png"
  method text() = protagonista.cantidadDeIngredientes("basico").toString()
  method textColor() = "ffffff"
}