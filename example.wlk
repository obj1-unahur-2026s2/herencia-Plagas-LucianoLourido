class Barrio{
    const elemento = [] 
    method agregarElemento(unElemento) {elemento.add(unElemento)}
    method cantNoBuenos() = elemento.count({e => !e.esBuena()})
    method cantBuenos() = elemento.count({e => e.esBuena()})
    method esCopado() = self.cantBuenos() > self.cantNoBuenos()
}

class Elemento{
    method esBuena() 
}

class Hogar inherits Elemento {
    var nivelDeMugre 
    var nivelDeConfort 

    method nivelDeMugre() = nivelDeMugre
    method nivelDeConfort() = nivelDeConfort
    override method esBuena() = nivelDeMugre <= (nivelDeConfort / 2)  
}

class Huerta inherits Elemento {
    const capacidadDeProduccion
    var nivelDeHuertas = 10
    method nivelDeHuertas() = nivelDeHuertas 
    method CambiarNivelDeHuertas(nuevoNivel) {
    nivelDeHuertas = nuevoNivel 
    }
    method capacidadDeProduccion() = capacidadDeProduccion
    override method esBuena() = self.capacidadDeProduccion() > self.nivelDeHuertas()
}

class Mascota inherits Elemento{
    var nivelDeSalud 
    method nivelDeSalud() = nivelDeSalud
    override method esBuena() = self.nivelDeSalud() > 250  
}
class Plaga {

}

class Cucarachas inherits Plaga{

}

class Pulgas inherits Plaga{
    
}

class Garrapatas inherits Plaga{
    
}

class Mosquitos inherits Plaga{
    
}