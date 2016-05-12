import MatchFoodLogin.*
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class BootStrap {

    def init = { servletContext ->
        def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        def user = User.findOrSaveWhere(name: 'admin', email: 'correo@unal.edu.co', address: 'La Nacho', phone: '3165000', username: 'admin', password: '1234')

        if(!user.authorities.contains(adminRole) ){
            UserRole.create(user, adminRole,true)
        }

        def userRole = Role.findOrSaveWhere(authority: 'ROLE_USUARIO')
        def userNoAdmin = User.findOrSaveWhere(name: 'user', email: 'correoUser@unal.edu.co', address: 'La Nacho', phone: '3165000', username: 'user', password: '1234')

        if(!userNoAdmin.authorities.contains(userRole) ){
            UserRole.create(userNoAdmin, userRole,true)
        }

        //Panes
        def baguette = new Ingrediente(id_ingrediente: 0000, nombre: "Baguette", descripcion: "Pan tipo Frances")
        def pBlanco = new Ingrediente(id_ingrediente: 0001, nombre: "Pan blanco", descripcion: "Pan de masa suave")
        def pIntegral = new Ingrediente(id_ingrediente: 0002, nombre: "Pan Integral", descripcion: "Pan de granos suaves bajo en grasa")
        def pQueso = new Ingrediente(id_ingrediente: 0003, nombre: "Pan de queso", descripcion: "Pan tipo queso")
        baguette.save()
        pBlanco.save()
        pIntegral.save()
        pQueso.save()

        //Proteinas
        def atun = new Ingrediente(id_ingrediente: 0010, nombre: "Atún", descripcion: "Atún enlatado", precio_ingrediente: 4000)
        def jamon = new Ingrediente(id_ingrediente: 0011, nombre: "Jamón", descripcion: "Jamón de cerdo ahumado", precio_ingrediente: 4000)
        def pollo = new Ingrediente(id_ingrediente: 0012, nombre: "Pollo", descripcion: "Rodajas de pollo a la plancha", precio_ingrediente: 4000)
        def salmon = new Ingrediente(id_ingrediente: 0013, nombre: "Salmón", descripcion: "Cortes de salmón", precio_ingrediente: 4000)
        def tocino = new Ingrediente(id_ingrediente: 0014, nombre: "Tocino", descripcion: "Tiras de tocino refrito", precio_ingrediente: 4000)
        atun.save()
        jamon.save()
        pollo.save()
        salmon.save()
        tocino.save()

        //Ingrdientes Extra

        def champ = new Ingrediente(id_ingrediente: 0100, nombre: "Champiñones", descripcion: "Champiñones frescos", precio_ingrediente: 2000)
        def cebol = new Ingrediente(id_ingrediente: 0101, nombre: "Cebolla", descripcion: "Rodajas de Cebolla recien cortada", precio_ingrediente: 2000)
        def lettuce = new Ingrediente(id_ingrediente: 0102, nombre: "Lechuga", descripcion: "Hojas frescas de lechuga", precio_ingrediente: 2000)
        def pepino = new Ingrediente(id_ingrediente: 0103, nombre: "Pepni", descripcion: "Rebanadas de lechuga", precio_ingrediente: 2000)
        def pimenton = new Ingrediente(id_ingrediente: 0104, nombre: "Pimenton", descripcion: "Cortes hilados de pimenton", precio_ingrediente: 2000)
        def queso = new Ingrediente(id_ingrediente: 0105, nombre: "Queso", descripcion: "Queso doble crema", precio_ingrediente: 2000)
        def tomate= new Ingrediente(id_ingrediente: 0106, nombre: "Tomate", descripcion: "Rodajas de tomate", precio_ingrediente: 2000)
        champ.save()
        cebol.save()
        lettuce.save()
        pepino.save()
        pimenton.save()
        queso.save()
        tomate.save()

    }
    def destroy = {
    }
}
