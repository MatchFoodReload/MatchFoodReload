/**
 * Created by dabaq on 15/04/2016.
 */
// Load the SDK asynchronously
(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5&appId=219219088445493";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

$( document ).ready(function() {
    var carPrice = [];
    var carProduct = [];
    $("#btn_san_1").click(function() {
        carPrice.push(9000);
        carProduct.push("Sándwich de Res");
        alert("Sándwich de Res ingresado al carro de compras correctamente");
    });
    $("#btn_san_2").click(function() {
        carPrice.push(10000);
        carProduct.push("Sándwich de Cordero");
        alert("Sándwich de Cordero ingresado al carro de compras correctamente");
    });
    $("#btn_san_3").click(function() {
        carPrice.push(14000);
        carProduct.push("Sándwich de Salmón");
        alert("Sándwich de Salmón ingresado al carro de compras correctamente");
    });
    $("#btn_san_4").click(function() {
        carPrice.push(11500);
        carProduct.push("Sándwich de Atún");
        alert("Sándwich de Atún ingresado al carro de compras correctamente");
    });
    $("#btn_san_5").click(function() {
        carPrice.push(10000);
        carProduct.push("Sándwich de Vegetariano");
        alert("Sándwich de Vegetariano ingresado al carro de compras correctamente");
    });
    $("#btn_san_6").click(function() {
        carPrice.push(13000);
        carProduct.push("Sándwich de Fondue de Carne");
        alert("Sándwich de Fondue de Carne ingresado al carro de compras correctamente");
    });
    $("#btn_san_7").click(function() {
        carPrice.push(11000);
        carProduct.push("Sándwich de Lomo de Res");
        alert("Sándwich de Lomo de Res ingresado al carro de compras correctamente");
    });
    $("#btn_san_8").click(function() {
        carPrice.push(9500);
        carProduct.push("Sándwich de Pollo");
        alert("Sándwich de Pollo ingresado al carro de compras correctamente");
    });
    $("#btn_san_9").click(function() {
        carPrice.push(10500);
        carProduct.push("Sándwich Mexicano");
        alert("Sándwich Mexicano ingresado al carro de compras correctamente");
    });






    function AdddivTableCar(precio) {
        $("#inputTableCar").val(precio);
    }



});

var rol = "usuario";
visibilidad(rol);
function visibilidad(rol) {
    if (rol == "usuario")
        document.getElementById("administar").style.visibility = "hidden";
    else
        document.getElementById("administar").style.visibility = "visible";
}

function correctRegister ()
{
    alert("Usuario Registrado Satisfactoriamente");
}

function errorRegister ()
{
    alert("Error");
}

function correctSendEmail() {
    alert ("Hemos reicbido tu solicitud exitosamente");
}

function errorSendEmail() {
    alert ("Oooops. ¡Algo ha ocurrido! Nuestros Ingenieros trabajarán inmediatamente para solucionarlo.");
}


