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
    int price

    String toString() {
        String precio = " \$ " + getPrice()
        return name + "\t\t\t" + precio
    }
}
