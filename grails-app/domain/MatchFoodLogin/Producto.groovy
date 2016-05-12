package MatchFoodLogin

class Producto{
    String nombre
    Integer id_producto
    Integer precio_producto

    static constraints = {
        nombre nullable:false
        id_producto nullable: false
        precio_producto nullable: false
    }
}
