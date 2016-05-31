package matchfood

import MatchFoodLogin.User
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class ProfileController {

    def springSecurityService

    def index() {
        def userLogged = User.findAllByUsername(springSecurityService.authentication.getName())
        String name = userLogged.name
        int nameSize = name.length()
        name = name.substring(1, nameSize-1)
        String address = userLogged.address
        int addressSize = address.length()
        address = address.substring(1, addressSize-1)
        String email = userLogged.email
        int emailSize = email.length()
        email = email.substring(1, emailSize-1)
        String phone = userLogged.phone
        int phoneSize = phone.length()
        phone = phone.substring(1, phoneSize-1)

        render(view : "index", model:[nombre:name, direccion:address, correo:email, celular:phone]);
    }
}
