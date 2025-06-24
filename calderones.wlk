import visual.*
import protagonista.*
import pociones.*

class Calderon inherits Visual(){
  method negarFabricacion() {
    game.say(self, "No tenes suficientes ingredientes")
    game.sound("error.wav").play()
  }
}
class CalderonVerde inherits Calderon(position = game.at(2,4)){
  override method image() = "calderonVerde.png"
  override method efecto() {
    if(protagonista.tieneIngredientesDeTipo_("basico")){
      protagonista.agregarPocion(new PocionVerde()) 
      protagonista.consumirIngrediente("basico")
      game.sound("brebaje.wav").play()
      } else {
        self.negarFabricacion()
      }
  }
}
class CalderonVioleta inherits Calderon(position = game.at(3,4)){
  override method image() = "calderonVioleta.png"
  override method efecto() {
    if(protagonista.tieneIngredientesDeTipo_("avanzado")){
      protagonista.agregarPocion(new PocionVioleta())
      protagonista.consumirIngrediente("avanzado")
      game.sound("brebaje.wav").play()
      } else {
        self.negarFabricacion()
      }
  }
}