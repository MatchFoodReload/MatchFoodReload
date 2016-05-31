package matchfood

import grails.plugin.springsecurity.annotation.Secured
import MatchFoodLogin.*

@Secured(['permitAll'])
class PrepareController {

    def index() { }

    def renderprepare(){
        render(view:"index")
    }

    def makeOrderPrepare(){
        String totalString = params.totalR
        Integer totalInteger = totalString.toInteger()
        def product = Producto.findOrSaveWhere(id_producto: 00026, precio_producto: totalInteger)
        product.save(true)
        redirect(uri: "/prepare/prueba")
    }

    def prueba(){
        def test=Producto.findAll()
        render(test)
    }

    def hola (){
        String precio = params.totalR
        redirect(controller: "TestShoppingCart", action: "personalizado", params: [price:precio] )
    }
}