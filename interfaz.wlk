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
class IconoPocionDorada inherits Visual(position = game.at(4,5)){
  override method image() = "PocionAmarilla.png"
  method text() = protagonista.cantidadDePociones("dorado").toString()
  method textColor() = "ffffff"
}
class IconoMoneda inherits Visual(position = game.at(5,5)){
  override method image() = "moneda.png"
  method text() = protagonista.dinero().toString()
  method textColor() = "FFDE59"
}
class IconoIngredienteBasico inherits Visual(position = game.at(0,3)){
  override method image() = "ingredienteBasico.png"
  method text() = protagonista.cantidadDeIngredientes("basico").toString()
  method textColor() = "ffffff"
}
class IconoIngredienteAvanzado inherits Visual(position = game.at(0,2)){
  override method image() = "ingredienteAvanzado.png"
  method text() = protagonista.cantidadDeIngredientes("avanzado").toString()
  method textColor() = "ffffff"
}
class IconoIngredienteExperto inherits Visual(position = game.at(0,1)){
  override method image() = "ingredienteExperto.png"
  method text() = protagonista.cantidadDeIngredientes("experto").toString()
  method textColor() = "ffffff"
}