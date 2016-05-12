package matchfood

import MatchFoodLogin.*
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class RegisterController {
    def index() {

}
def springSecurityService
def mailService

def crearUsuario(){
        def userRole = Role.findOrSaveWhere(authority: 'ROLE_USER')
        def user = User.findOrSaveWhere(name: params.nameR, email: params.emailR, address: params.addressR, phone: params.phoneR, username: params.usernameR, password: params.passwordR)
        if(User.find(email:params.emailR, username:params.nameR)){
            render("ya estaba registrado ese email o usuario")
        }else{
        try
        {
            if(!user.authorities.contains(userRole) ){
                UserRole.create(user, userRole,true)
                user.save(true)

                String name = params.nameR
                String email = params.emailR
                String asunto = "¡Bienvenido a Match Food!"
                String mensaje = "<h3><b>¡Bienvenido a Match Food!</b></h3><p>Hola " + name + ", te damos una súper " +
                        "bienvenida a la familia de Match Food Reload y esperamos que siempre puedas llenar tu vida de felicidad " +
                        "con tus mejores ingredientes y nuestras recetas. </p>" +
                        "<p>Puedes armar tu sándwich favorito en <a href='http://matchfoodreload.herokuapp.com/prepare/index'>Prepáralo tu mismo</a>" +
                        " o disfrutar de los nuestros en <a href='http://matchfoodreload.herokuapp.com/prepare/index'>Nuestro Menú</a>.</p><br>" +
                        "<p>Powered by Match Food</p>"

                mailService.sendMail {
                    to email
                    from "matchfoodreload@gmail.com"
                    subject asunto
                    html mensaje
                }

                springSecurityService.reauthenticate(params.usernameR, params.passwordR)
                redirect(uri:'/')
            }
        }
        catch (Exception e)
        {

        }
        }

    }

    def actulizarLogin() {

        try{
            String username=springSecurityService.authentication.getName()
            if(username=="__grails.anonymous.user__"){
                render template="/layouts/Logged"
            }
            else{
                return username
            }
        }
        catch(Exception e){
        }
    }

    def showLoggedUser(){
        try{
            String username=springSecurityService.authentication.getName()
            if(username=="__grails.anonymous.user__"){
                return "no one logged on"
            }
            else{
                return username
            }
        }
        catch(Exception e){
        }

    }
}

