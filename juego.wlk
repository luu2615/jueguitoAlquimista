import protagonista.*
import calderones.*
object nivel {
  method configurar() {
    self.configurarEscenario()
    self.configurarProtagonista()
    self.configurarObjetos()
  }
  method configurarEscenario() {
    game.cellSize(100)
    game.width(9)
    game.height(9)
    game.title("Clicker")
    game.ground("piso.png")
  }
  method configurarProtagonista() {
    game.addVisual(protagonista)
    keyboard.w().onPressDo{ protagonista.mover(arriba)}
		keyboard.s().onPressDo{ protagonista.mover(abajo)}
		keyboard.a().onPressDo{ protagonista.mover(izquierda)}
		keyboard.d().onPressDo{ protagonista.mover(derecha)}
    keyboard.q().onPressDo { game.say(protagonista, "Tengo " + protagonista.plata() + " pesos") }
    keyboard.e().onPressDo { game.say(protagonista, "Tengo " + protagonista.cantidadDePociones("verde") + " pociones") }
  }
  method configurarObjetos() {
    game.addVisual(new CalderonVerde())
    game.addVisual(new CajaVenta())
  } 
}