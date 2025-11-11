class Viaje {
  var dias = 0;
  var diasDeCadaViaje = 0
  var idiomasDelViaje = []

  method idiomas() {
    return idiomasDelViaje;
  }

  method sirveParaBroncearse()

  method implicaEsfuerzo()

  method diasTotales() {
    return dias
  }
}

class Playa inherits Viaje {
  const largoPlaya

  method idioma(idioma){
    idiomasDelViaje.add(idioma)
  }

  method cantidadDias(){
    diasDeCadaViaje = largoPlaya / 500
    dias = dias + diasDeCadaViaje;
    return diasDeCadaViaje;
  }

  override method implicaEsfuerzo(){
    return largoPlaya >= 1200;
  }

  override method sirveParaBroncearse() {
    return true;
  }

}

class Excursion inherits Viaje {
  const cantidadAtracciones
  const esExcurisionNormal

  method idioma(idioma){
    idiomasDelViaje.add(idioma)
  }

  method cantidadDias(){
    diasDeCadaViaje = cantidadAtracciones / 2;

    if (not esExcurisionNormal) {
      diasDeCadaViaje = diasDeCadaViaje + 1 ;
    }

    dias = dias + diasDeCadaViaje;

    return diasDeCadaViaje
  }
  override method implicaEsfuerzo(){
    return cantidadAtracciones >= 5 && cantidadAtracciones <= 8;
  }
  
  override method sirveParaBroncearse() {
    return not esExcurisionNormal
  }
}

class Trekking inherits Viaje {
  const distanciaDeSenderos
  const diasDeSolPorAño
  
  method idioma(idioma){
    idiomasDelViaje.add(idioma)
  }

  method cantidadDias(){

    diasDeCadaViaje = distanciaDeSenderos / 50
    dias = dias + diasDeCadaViaje

    return diasDeCadaViaje;
  }

  override method implicaEsfuerzo(){
    return distanciaDeSenderos >= 80
  }

  override method sirveParaBroncearse() {
    return diasDeSolPorAño >= 200 || diasDeSolPorAño >= 100 && diasDeSolPorAño <= 199 && distanciaDeSenderos >= 120
  }
}