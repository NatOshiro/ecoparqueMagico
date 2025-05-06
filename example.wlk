
object dragon {
  var temperatura = 200
  var edad = 90
  method diurno() = true
  method alimentar() {
    temperatura = temperatura + 20
  }
  method puedeSerEntrenado() = temperatura <= 100
  method dormir() {
    temperatura = 200
  }
  method entrenar() {
    if (self.puedeSerEntrenado()){
      temperatura = temperatura - 40
    }
  }

  method puedeSerEntrenadoPor(entrenador) = entrenador.soportaAltasTemperaturas()

}
object unicornio {
  var poderMagico = 3
  var edad = 30
  method diurno() = true

  method alimentar() {
    poderMagico += 1
    }
  var estaFeliz = false
  method puedeSerEntrenado() = poderMagico >= 5
  method entrenar() {
    if (self.puedeSerEntrenado()){
      estaFeliz = true
    }
  }
  method esJoven() = edad < 50
  method puedeSerEntrenadoPor(entrenador) = true
  method dormir(){ 
    estaFeliz = not estaFeliz
  }
}
object sirena {
  var poderDeHabilidad = 40
  method poderDeHabilidad() = poderDeHabilidad
  var edad = 60
  method diurno() = false
  method alimentar() = poderDeHabilidad * 1.5
  method nadar(metros) {
    poderDeHabilidad = (poderDeHabilidad - metros).max(0)
  }
  method practicar() = (poderDeHabilidad - 20).max(0)
  method entrenar() {
    
    self.nadar((poderDeHabilidad/2))
    self.practicar()
  }
  method dormir() {
    poderDeHabilidad = 40
  }

  method esJoven() = edad < 45 
}


object fenix {
  var edad = 180
  var estaRelusiente = true
  method energía() {
    if(estaRelusiente){
      return(edad)
    }
    else {
      return((edad / 2))
      }
  }
  method esPichon() = edad < 5
  method puedeSerEntrenadoPor(entrenador) = 
  ((entrenador.soportaAltasTemperaturas()) && 
  (entrenador.añosExperiencia() > 5))
  method puedeSerEntrenado() = not self.esPichon()

  method entrenar() {
    if (self.puedeSerEntrenado()){
      edad = edad * 1.1
      estaRelusiente = false
    }

  }


}
object gargola {
  var edad = 15

}

