object jugadora {}
object guerrero {}
object trabajador {}
object arma{}
object vaca {}

object arbol {}


/*
nace con 10 flechas. Cada vez que se usa, pierde una flecha. Está cargada si tiene flechas. Su potencia es 4.
*/
object ballesta {
  var cantidad = 10
  const potencia = 4
  method potencia() = potencia 
  method disparar() {cantidad += -1}

  method estaCargada() {
    var estado = false
    if(cantidad >= 0) {
      estado = true
    }
    return estado
  }
  method tipo() = arma
}

/*nace cargada. Se puede usar solamente una vez, o sea, con el primer uso deja de estar cargada. Su potencia es 30.*/
object jabalina {
  var estaCargada = true
  method estaCargada() = estaCargada
  method disparar() {estaCargada = false}
  const potencia = 30
  method potencia() = potencia 
  method tipo() = arma 
}


object luisa {
  method rol() = jugadora
}

object floki {
  var tipoArma = jabalina
  method rol() = trabajador
  method tipoArma(armaX) {tipoArma = armaX}

  method fueUsada(nombreArma) {
    var estado = false
    if(nombreArma.estaCargada() == false) {
      estado = true
    }
    return estado
  }
  
  method encontrarElemento(armaX , personaje) {
    if(self.fueUsada(armaX)) {
      personaje.reaccionAtaque(armaX , personaje)
    }
  }
}

object mario {
  method rol() = trabajador
}

//elementos
object castillo {
  var defensa = 150
  method defensa(nivelActual) {defensa = nivelActual}
  method altura() = 20
  method rol() = vaca

  method reaccionAtaque(arma , personaje){
    if(personaje == floki) {
      defensa = defensa - arma.potencia()
    } else {
      
    }
  }
}

object aurora {
  var estaViva = true
  method estaViva(estado) {estaViva = estado} 
  method altura() = 1
  method rol() = vaca 

  method reaccionAtaque(potenciaArma , personaje) {}
}

object tipa {
  var altura = 8
  method rol() = arbol
  method altura(alturaX) {altura = alturaX}

  method reaccionAtaque(potenciaArma , personaje) {}
}