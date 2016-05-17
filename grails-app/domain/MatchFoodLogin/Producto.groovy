package MatchFoodLogin

import com.metasieve.shoppingcart.Shoppable

class Producto extends Shoppable{
    /*Integer id_producto
    Integer precio_producto

    static constraints = {
        id_producto nullable: false
        precio_producto nullable: false
    }*/
    String name

    String toString() {
        return name
    }
}
