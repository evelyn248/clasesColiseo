class ArmaFilo{
  var filo 
  var longitud 

  method ataque() = filo * longitud
}

class ArmaContundentes{
  var peso 

  method ataque()= peso

}


object casco{
  method defensa(unGladiador)= 10
}

object escudo{
  method defensa(unGladiador)= 5 + unGladiador.destreza() * 0.1
}
class Gladiador {
  var vida= 100

  method vida() = vida

  method defensa()

  method poderDeAtaque()

}

class Mirmillon inherits Gladiador{
  var armaActual
  var armadura
  var destreza = 15

  method cambiarArma(unArma) {
    armaActual = unArma
  }

  override method defensa() = armadura.defensa(self)

  method cambiarArmadura(unaArmadura) {
    armadura = unaArmadura
  }

  method destreza() = destreza

  method atacar(unGladiador) {
    unGladiador.vida() = self.poderDeAtaque() - unGladiador.defensa()

  } 

}

class Dimachaerus inherits Gladiador {
  var armas= []
  var fuerza = 10
  var destreza

  method atacar(unGladiador) {
    return unGladiador.vida() = self.poderDeAtaque() - unGladiador.defensa()
  }

  override method poderDeAtaque() = fuerza + self.sumaPoderArmas()

  method sumaPoderArmas() = armas.sum(a => a.ataque())

}