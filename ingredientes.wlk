class Ingrediente {
  method tipo()
}
class IngredienteBasico inherits Ingrediente {
  method tipo() = "basico"
}

class IngredienteAvanzado inherits Ingrediente {
  method tipo() = "avanzado"
}

class IngredienteExperto inherits Ingrediente {
  method tipo() = "experto"
}