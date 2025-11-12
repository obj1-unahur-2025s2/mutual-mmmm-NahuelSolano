class Viaje {
  var diasDeCadaViaje = 0

  method idioma()

  method cantidadDias()

  method sirveParaBroncearse()

  method implicaEsfuerzo()

  method esInteresante()
}




class Playa inherits Viaje {
  const largoPlaya
  const idiomas
  var idiomasDeLaPlaya =[]

  override method cantidadDias(){
    diasDeCadaViaje = largoPlaya / 500
    return diasDeCadaViaje;
  }

    override method idioma() {
    idiomasDeLaPlaya.add(idiomas)
    return idiomasDeLaPlaya
  }

  override method implicaEsfuerzo(){
    return largoPlaya >= 1200;
  }

  override method sirveParaBroncearse() {
    return true;
  }
  override method esInteresante(){
    return idiomasDeLaPlaya.size() >= 2;
  }

  method esRecomendadaPara(unSocio){
    return self.esInteresante() && unSocio.leAtrae(self) && unSocio.actividadesHechas.size()
  }

}






class Excursion inherits Viaje {
  const cantidadAtracciones
  const esExcurisionNormal
  const idiomas
  var idiomasDeLaExcursion = []

  override method cantidadDias(){
    diasDeCadaViaje = cantidadAtracciones / 2;

    if (not esExcurisionNormal) {
      diasDeCadaViaje = diasDeCadaViaje + 1 ;
    }
    return diasDeCadaViaje
  }
  override method implicaEsfuerzo(){
    return cantidadAtracciones >= 5 && cantidadAtracciones <= 8;
  }

  override method idioma() {
    idiomasDeLaExcursion.add(idiomas)
    return idiomasDeLaExcursion
  }
  
  override method sirveParaBroncearse() {
    return not esExcurisionNormal
  }

  override method esInteresante(){
    return idiomasDeLaExcursion.size() >= 2 || cantidadAtracciones == 5;
  }
}






class Trekking inherits Viaje {
  const distanciaDeSenderos
  const diasDeSolPorAño
  const idiomas
  var idiomasDelTrekking = []

  override method cantidadDias(){
    diasDeCadaViaje = distanciaDeSenderos / 50
    return diasDeCadaViaje;
  }

  override method implicaEsfuerzo(){
    return distanciaDeSenderos >= 80
  }

  override method sirveParaBroncearse() {
    return diasDeSolPorAño >= 200 || diasDeSolPorAño >= 100 && diasDeSolPorAño <= 199 && distanciaDeSenderos >= 120
  }

  override method esInteresante() {
    return idiomasDelTrekking.size() >= 2 && diasDeSolPorAño >= 140;
  }
  
  override method idioma() {
    idiomasDelTrekking.add(idiomas)
    return idiomasDelTrekking
  }

}





class Gimnasia inherits Viaje {
  const idiomas = "español"
  const idiomaDelGimnasio = []

  override method cantidadDias() {
    diasDeCadaViaje = 1
    return diasDeCadaViaje;
  }

  override method idioma() {

    idiomaDelGimnasio.add(idiomas)

    return idiomaDelGimnasio
  }

  override method sirveParaBroncearse() {
    return false;
  }

  override method implicaEsfuerzo() {
    return true;
  }

  override method esInteresante(){
    return true
  }
  

}