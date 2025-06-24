class Pocion{
  method valor()
  method color() 
}
class PocionVerde inherits Pocion{
  override method valor() = 10
  override method color() = "verde"
}
class PocionVioleta inherits Pocion{
  override method valor() = 20
  override method color() = "violeta"
}
class PocionDorada inherits Pocion{
  override method valor() = 50
  override method color() = "dorado"
}