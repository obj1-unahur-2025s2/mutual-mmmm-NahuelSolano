import example.*;

class Socio {
    const edad
    var maxActividades
    var actividadesHechas = []
    var idiomasQueHabla = []
    const tipoDeSocio

    method esAdoradorDelSol() {
      return actividadesHechas.all({a => a.sirveParaBroncearse()})
    }

    method actividadesForzadas() {
      return actividadesHechas.filter({a => a.implicaEsfuerzo()})
    }

    method regitrarActividad(actividad) {
        if(maxActividades != 0) {
      actividadesHechas.add(actividad)
      maxActividades = maxActividades - 1
      }
      else {
        self.error("no puede hacer mas actividades")
      }
    }
    method edad(){
        return edad;
    }
    method tipoDeSocio(){
        return tipoDeSocio;
    }

    method leAtrae(unaActividad){
        tipoDeSocio.leAtrae(unaActividad)
    }
}


object tranquilo {
    method leAtrae(unaActividad) {
      return unaActividad.cantidadDias() >= 4
    }
}

object coherente {
  method leAtrae(unaActividad) {

    return if(Socio.esAdoradorDelSol()){
            unaActividad.sirveParaBroncearse()
        }
        else {
            unaActividad.implicaEsfuerzo()
        }
    }
}

object relajado {
  method leAtrae(unaActividad) {
    
    var hayComun = unaActividad.idioma().any({ n => Socio.idiomasQueHabla.any({ m => m == n }) })
    
    return hayComun
  }
}