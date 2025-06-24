import visual.*
import protagonista.*
class Mejora1 inherits Visual(position = game.at(1,0)){
  var precio = "100"
  var imagen = "mejora1SinComprar.png"
  override method image() = imagen
  method text() = precio
  method textColor() = "FFDE59"
  override method efecto() {
  if(protagonista.dinero() == 100){
    protagonista.adquirirEquipamiento()
    protagonista.removerDinero(100)
    precio = 0
    imagen = "mejora1Comprada.png"
    game.sound("afirmativo.wav").play()
  } else {
    game.say(self, "No tenes suficientes monedas")
    game.sound("error.wav").play()
  }
  }
}