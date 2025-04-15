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
  method disparar() {cantidad += -1}
  method tipo() = arma
}

/*nace cargada. Se puede usar solamente una vez, o sea, con el primer uso deja de estar cargada. Su potencia es 30.*/
object jabalina {
  var estaCargada = true
  const potencia = 30
  method disparar() = {estaCargada = false} 
  method tipo() = arma 
}


object luisa {
  method rol() = jugadora
}

object floki {
  var tipoArma = jabalina
  method rol() = trabajador
  method tipoArma(armaX) {tipoArma = armaX} 
}

object mario {
  method rol() = trabajador
}

object castillo {
  var defensa = 150
  method defensa(nivelActual) {defensa = nivelActual}
  method altura() = 20
  method rol() = vaca
}

object aurora {
  var estaViva = true
  method estaViva(estado) {estaViva = estado} 
  method altura() = 1
  method rol() = vaca 
}

object tipa {
  var altura = 8
  method rol() = arbol
  method altura(alturaX) {altura = alturaX} 
}