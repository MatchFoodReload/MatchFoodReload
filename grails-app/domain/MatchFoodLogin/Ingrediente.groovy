package MatchFoodLogin

class Ingrediente {
    Integer id_ingrediente
    String nombre
    String descripcion
    String precio_ingrediente

    static constraints = {
        id_ingrediente nullable: false
        nombre nullable: false
        descripcion nullable: true
        precio_ingrediente nullable: true
    }
}
