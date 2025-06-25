import visual.*
import protagonista.*
import calderones.*
import mejoras.*
import interfaz.*
import tiendasIngredientes.*
object nivel {
  method configurar() {
    self.configurarEscenario()
    self.configurarProtagonista()
    self.configurarObjetos()
    self.configurarInterfaz()
  }
  method configurarEscenario() {
    game.cellSize(100)
    game.width(6)
    game.height(6)
    game.title("Potion Clicker")
    game.ground("piso.png")
    //Musica
    const tema = game.sound("ost.mp3")
      tema.shouldLoop(true)
      tema.volume(0.2)
      game.schedule(10, { tema.play()} )
    }
  method configurarProtagonista() {
    game.addVisual(protagonista)
    keyboard.w().onPressDo{ protagonista.mover(arriba)}
		keyboard.s().onPressDo{ protagonista.mover(abajo)}
		keyboard.a().onPressDo{ protagonista.mover(izquierda)}
		keyboard.d().onPressDo{ protagonista.mover(derecha)}
    keyboard.q().onPressDo { game.say(protagonista, "Tengo " + protagonista.dinero() + " pesos") }
    keyboard.e().onPressDo { game.say(protagonista, "Tengo " + protagonista.cantidadDePociones("verde") + " pociones") }
  }
  method configurarObjetos() {
    game.addVisual(new CalderonVerde())
    game.addVisual(new CalderonVioleta())
    game.addVisual(new CalderonDorado())
    game.addVisual(new CajaVenta())
    game.addVisual(new Mejora1())
    game.addVisual(new Mejora2())
    game.addVisual(new Mejora3())
    game.addVisual(new TiendaIngredientesBasicos())
    game.addVisual(new TiendaIngredientesAvanzados())
    game.addVisual(new TiendaIngredientesExperto())
    game.addVisual(new Pared())
  }
  method configurarInterfaz() {
    game.addVisual(new IconoPocionVerde())
    game.addVisual(new IconoPocionVioleta())
    game.addVisual(new IconoPocionDorada())
    game.addVisual(new IconoMoneda())
    game.addVisual(new IconoIngredienteBasico())
    game.addVisual(new IconoIngredienteAvanzado())
    game.addVisual(new IconoIngredienteExperto())
  }
}