package matchfood

import MatchFoodLogin.Producto
import com.metasieve.shoppingcart.Shoppable
import com.metasieve.shoppingcart.ShoppingCartInterfaceTestProduct
import com.metasieve.shoppingcart.ShoppingCartTestProduct
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class TestShoppingCartController {

    def shoppingCartService
    def i = 0
    def index = {
        if (Producto.count == 0) {
            def producto = new Producto(name: 'prueba sand', shoppingItem:shoppingCartService.getShoppingItem())
            producto.save()
        }
        //redirect(action:show, params:params)
        render(view:"index")
    }

    def show = { }
    def carneDeRes() {
        if(i==0){
            def producto = new Producto(name: 'carne', shoppingItem:shoppingCartService.getShoppingItem())
            producto.save()
            producto.addToShoppingCart()
            i = i+1
        }
        render(view:"index")
    }

    def jamonCordero() {
        if(i==0){
            def producto = new Producto(name: 'JamonCordero', shoppingItem:shoppingCartService.getShoppingItem())
            producto.save()
            producto.addToShoppingCart()
            i = i+1
        }
        render(view:"index")
    }

    def salmon() {
        if(i==0){
            def producto = new Producto(name: 'carne', shoppingItem:shoppingCartService.getShoppingItem())
            producto.save()
            producto.addToShoppingCart()
            i = i+1
        }
        render(view:"index")
    }

    def mexicano() {
        if(i==0){
            def producto = new Producto(name: 'mexicano', shoppingItem:shoppingCartService.getShoppingItem())
            producto.save()
            producto.addToShoppingCart()
            i = i+1
        }
        render(view:"index")
    }


    def add = {
        def product
        if (params.class == 'class+com.metasieve.shoppingcart.ShoppingCartInterfaceTestProduct') {
            product = ShoppingCartInterfaceTestProduct.get(params.id)
        } else {
            product = Shoppable.get(params.id)
        }
        if(params.version) {
            def version = params.version.toLong()
            if(product.version > version) {
                product.errors.rejectValue("version", "shoppable.optimistic.locking.failure", message(code:"Shoppable.already.updated"))
            } else {
                product.addToShoppingCart()
            }
        } else {
            product.addToShoppingCart()
        }

        render(template:'shoppingCartContent', plugin:'shoppingCart')
    }

    def remove = {
        def product
        if (params.class == 'class+com.metasieve.shoppingcart.ShoppingCartInterfaceTestProduct') {
            product = ShoppingCartInterfaceTestProduct.get(params.id)
        } else {
            product = Shoppable.get(params.id)
        }

        if(params.version) {
            def version = params.version.toLong()
            if(product.version > version) {
                product.errors.rejectValue("version", "shoppable.optimistic.locking.failure", message(code:"Shoppable.already.updated"))
            } else {
                product.removeFromShoppingCart()
            }
        } else {
            product.removeFromShoppingCart()
        }

        render(template:'shoppingCartContent', plugin:'shoppingCart')
    }

    def removeAll = {
        def product
        if (params.class == 'class+com.metasieve.shoppingcart.ShoppingCartInterfaceTestProduct') {
            product = ShoppingCartInterfaceTestProduct.get(params.id)
        } else {
            product = Shoppable.get(params.id)
        }

        if(params.version) {
            def version = params.version.toLong()
            if(product.version > version) {
                product.errors.rejectValue("version", "shoppable.optimistic.locking.failure", message(code:"Shoppable.already.updated"))
            } else {
                product.removeQuantityFromShoppingCart(shoppingCartService.getQuantity(product))
            }
        } else {
            product.removeQuantityFromShoppingCart(shoppingCartService.getQuantity(product))
        }

        render(template:'shoppingCartContent', plugin:'shoppingCart')
    }

    def checkOut = {
        def checkedOutItems = shoppingCartService.checkOut()

        render(template:'shoppingCartContent', model:['checkedOutItems':checkedOutItems], plugin:'shoppingCart')
    }
}
