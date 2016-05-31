package matchfood

import MatchFoodLogin.Producto
import com.metasieve.shoppingcart.Shoppable
import com.metasieve.shoppingcart.ShoppingCartInterfaceTestProduct
import com.metasieve.shoppingcart.ShoppingCartTestProduct
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class TestShoppingCartController {

    def shoppingCartService
    def contCarne = 0
    def conCordero = 0
    def conSalmon = 0
    def conAtun = 0
    def conVegetal = 0
    def conFondue = 0
    def conLomo = 0
    def conPollo = 0
    def conMexicano = 0
    def conPersonalizado = 0

    def index = {
        /*if (Producto.count == 0) {
            def producto = new Producto(name: 'prueba sand', shoppingItem:shoppingCartService.getShoppingItem())
            producto.save()
        }
        redirect(action:show, params:params)*/
        render(view:"index")
    }

    def personalizado( ) {
        if(conPersonalizado == 0){
            String p = params.price
            System.out.println(p)
            def producto = new Producto(name: 'Personalizado', price: p, shoppingItem:shoppingCartService.getShoppingItem())
            producto.save()
            producto.addToShoppingCart()
            conPersonalizado = conPersonalizado + 1
        } else {
            String p = params.price
            String n = "Personalizado " + conPersonalizado.toString()
            System.out.println(p)
            def producto = new Producto(name: n, price: p, shoppingItem:shoppingCartService.getShoppingItem())
            producto.save()
            producto.addToShoppingCart()
            conPersonalizado = conPersonalizado + 1
        }
        render(view:"index")
    }


    def show = { }
    def carneDeRes() {
        if(contCarne==0){
            def producto = new Producto(name: 'Carne de Res', price: '9000', shoppingItem:shoppingCartService.getShoppingItem())
            producto.save()
            producto.addToShoppingCart()
            contCarne = contCarne+1
        }
        render(view:"index")
    }

    def jamonCordero() {
        if(conCordero==0){
            def producto = new Producto(name: 'Cordero', price: '10000', shoppingItem:shoppingCartService.getShoppingItem())
            producto.save()
            producto.addToShoppingCart()
            conCordero = conCordero+1
        }
        render(view:"index")
    }

    def salmon() {
        if(conSalmon==0){
            def producto = new Producto(name: 'Salmón', price: '14000', shoppingItem:shoppingCartService.getShoppingItem())
            producto.save()
            producto.addToShoppingCart()
            conSalmon = conSalmon+1
        }
        render(view:"index")
    }

    def atun() {
        if(conAtun==0){
            def producto = new Producto(name: 'Atún', price: '11500', shoppingItem:shoppingCartService.getShoppingItem())
            producto.save()
            producto.addToShoppingCart()
            conAtun = conAtun+1
        }
        render(view:"index")
    }

    def vegetariano() {
        if(conVegetal==0){
            def producto = new Producto(name: 'Vegetariano', price: '10000', shoppingItem:shoppingCartService.getShoppingItem())
            producto.save()
            producto.addToShoppingCart()
            conVegetal = conVegetal+1
        }
        render(view:"index")
    }

    def fondueCarne() {
        if(conFondue==0){
            def producto = new Producto(name: 'Fondue de Carne', price: '13000', shoppingItem:shoppingCartService.getShoppingItem())
            producto.save()
            producto.addToShoppingCart()
            conFondue = conFondue+1
        }
        render(view:"index")
    }

    def lomoRes() {
        if(conLomo==0){
            def producto = new Producto(name: 'Lomo de Res', price: '11000', shoppingItem:shoppingCartService.getShoppingItem())
            producto.save()
            producto.addToShoppingCart()
            conLomo = conLomo+1
        }
        render(view:"index")
    }

    def pollo() {
        if(conPollo==0){
            def producto = new Producto(name: 'Pollo', price: '9500', shoppingItem:shoppingCartService.getShoppingItem())
            producto.save()
            producto.addToShoppingCart()
            conPollo = conPollo+1
        }
        render(view:"index")
    }

    def mexicano() {
        if(conMexicano==0){
            def producto = new Producto(name: 'Mexicano', shoppingItem:shoppingCartService.getShoppingItem())
            producto.save()
            producto.addToShoppingCart()
            conMexicano = conMexicano+1
        }
        render(view:"index")
    }

    def agregar = {
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

    def eliminar = {
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

    def eliminarTodo = {
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

