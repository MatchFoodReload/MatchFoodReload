<%--
  Created by IntelliJ IDEA.
  User: Andréslee
  Date: 22/04/2016
  Time: 9:11 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <meta name="layout" content="main">

</head>

<body>

<!-- Page Content -->
<div class="container">

    <!-- Jumbotron Header -->
    <header class="jumbotron hero-spacer">
        <h1>Disfruta de Nuestro <b>Menú</b></h1>
        <p>Aquí tienes el menú que nuestros clientes nos han ayudado a crear, pero si eres de esos que quiere más ayúdanos y prepara tu sándwich ahora mismo.</p>
        <p><a class="btn btn-primary btn-large" href="${createLink(controller: 'prepare', action: 'renderprepare')}">¡Preparar mi sándwich ahora!</a>
        </p>
    </header>

    <div id="divCar" style="background-color: transparent;
    bottom: 480px;
    margin-left: 1050px;
    padding: 10px 0 0;
    position: fixed;
    text-align: center;
    z-index: 16;">
        <img style="background-color: transparent; width: 50%; height: 50%;" src="${createLinkTo(dir:'images',file:'BotonCarritoCompras.png')}">
    </div>

    <div id="divCarBox" style="background: none repeat scroll 0 0 darkgray; visibility: hidden;
    border: 1px solid #DDDDDD;
    border-radius: 5px 5px 5px 5px;
    bottom: 280px;
    left: auto;
    margin-left: 750px;
    padding: 10px;
    position: fixed;
    text-align: center;
    width: 400px;
    z-index: 15;">
        <div class="body">
            <h3>Carrito de Compras</h3>
            <div class="list">
                <table>
                    <thead>
                    <tr>

                        <th>Sándwich&nbsp;&nbsp;&nbsp;</th>

                        <th>&nbsp;Cantidad&nbsp;</th>

                        <th>&nbsp;</th>

                        <th>&nbsp;</th>

                        <th>&nbsp;</th>

                    </tr>
                    </thead>
                    <tbody id="shoppingCartContent">
                    <g:render plugin="shoppingCart" template="shoppingCartContent"/>
                    </tbody>
                </table>
                <br />
                <g:remoteLink action="checkOut"
                              update="shoppingCartContent"
                              onComplete="Effect.Pulsate('shoppingCartContent', {pulses: 1, duration: 1.0});">
                    Realizar Pedido
                </g:remoteLink>
            </div>
            <h3>Lista de deseos</h3>
            <div class="list">
                <table>
                    <thead>
                    <tr>

                        <th>Producto&nbsp;</th>

                        <th>&nbsp;</th>

                    </tr>
                    </thead>
                    <tbody id="shoppingCartContent">
                    <g:each in="${com.metasieve.shoppingcart.Shoppable.list()}" var="product">
                        <tr>
                            <td>
                                ${product}
                                &nbsp;&nbsp;
                            </td>
                            <td>
                                &nbsp;
                                <g:remoteLink action="add"
                                              params="${[id:product.id, class:product.class, version:product.version]}"
                                              update="shoppingCartContent"
                                              onComplete="Effect.Pulsate('shoppingCartContent', {pulses: 1, duration: 1.0});">
                                    Agregar
                                </g:remoteLink>
                                &nbsp;
                            </td>
                        </tr>
                    </g:each>
                    <g:each in="${com.metasieve.shoppingcart.ShoppingCartInterfaceTestProduct.list()}" var="product">
                        <tr>
                            <td>
                                ${product}
                            </td>
                            <td>
                                <g:remoteLink action="add"
                                              params="${[id:product.id, class:product.class, version:product.version]}"
                                              update="shoppingCartContent"
                                              onComplete="Effect.Pulsate('shoppingCartContent', {pulses: 1, duration: 1.0});">
                                    Agregar
                                </g:remoteLink>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <hr>

    <!-- Title -->
    <div class="row">
        <div class="col-lg-12">
            <h3>Últimos sándwiches agregados</h3>
        </div>
    </div>
    <!-- /.row -->

    <!-- Page Features -->
    <div class="row text-center">

        <div class="col-md-4 col-sm-6 hero-feature">
            <div class="thumbnail">
                <img src="${createLinkTo(dir:'images',file:'carneDesmechada.png')}" alt="CarneDes">
                <div class="caption">
                    <h3>Carne de Res</h3>
                    <p>Carne desmechada, queso amarillo, lechuga, tomate, pimentón, apio, mostaza, salsa BBQ,
                    pasta de tomate, cebolla roja y salsa MatchFood.</p>
                    <p>
                        <!-- class="btn btn-primary btn-large" id="btn_san_1">+ Añadir al Carro</-->
                        <a class="btn btn-primary btn-large" href="${createLink(controller: 'testShoppingCart', action: 'carneDeRes')}">+ Añadir al Carro</a>
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-6 hero-feature">
            <div class="thumbnail">
                <img src="${createLinkTo(dir:'images',file:'corderoMenu.png')}" alt="Cor">
                <div class="caption">
                    <h3>Cordero</h3>
                    <p>Jamón de cordero, frescos vegetales, queso mozzarella y salsa Match Food</p>
                    <p>
                        <a class="btn btn-primary btn-large" href="${createLink(controller: 'testShoppingCart', action: 'jamonCordero')}">+ Añadir al Carro</a>
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-6 hero-feature">
            <div class="thumbnail">
                <img src="${createLinkTo(dir:'images',file:'salmonMenu.png')}" alt="Sal">
                <div class="caption">
                    <h3>Salmón</h3>
                    <p>Salmon, tomate cherry, salsa de maracuya y queso mozzarella</p>
                    <p>
                        <a class="btn btn-primary btn-large" href="${createLink(controller: 'testShoppingCart', action: 'salmon')}">+ Añadir al Carro</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="row text-center">
        <div class="col-md-4 col-sm-6 hero-feature">
            <div class="thumbnail">
                <img src="${createLinkTo(dir:'images',file:'atunMenu.png')}" alt="Atun">
                <div class="caption">
                    <h3>Atún</h3>
                    <p>Lomitos de atún con salsa de la casa, frescos vegetales y queso mozzarella</p>
                    <p>
                        <a class="btn btn-primary btn-large" href="${createLink(controller: 'testShoppingCart', action: 'atun')}">+ Añadir al Carro</a>
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-6 hero-feature">
            <div class="thumbnail">
                <img src="${createLinkTo(dir:'images',file:'vegetariano.png')}" alt="Veg">
                <div class="caption">
                    <h3>Vegetariano</h3>
                    <p>Estragón, lechuga romana, tomate, cebolla, champiñones, zanahoria, apio, pimentón,
                    maíz, salsa teriyaki, queso amarillo y salsa MatchFood.</p>
                    <p>
                        <a class="btn btn-primary btn-large" href="${createLink(controller: 'testShoppingCart', action: 'vegetariano')}">+ Añadir al Carro</a>
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-6 hero-feature">
            <div class="thumbnail">
                <img src="${createLinkTo(dir:'images',file:'FondueCarneMenu.png')}" alt="Fou">
                <div class="caption">
                    <h3>Fondue de Carne</h3>
                    <p>Queso funido, champiñones salteados, salsa de la casa, tocineta y tomate</p>
                    <p>
                        <a class="btn btn-primary btn-large" href="${createLink(controller: 'testShoppingCart', action: 'fondueCarne')}">+ Añadir al Carro</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="row text-center">
        <div class="col-md-4 col-sm-6 hero-feature">
            <div class="thumbnail">
                <img src="${createLinkTo(dir:'images',file:'lomoResMenu.png')}" alt="Res">
                <div class="caption">
                    <h3>Lomo de Res</h3>
                    <p>Tiras de lomo de res, aritos de cebolla, tomate, pimenton, queso mozzarella y salsa Match Food Reload</p>
                    <p>
                        <a class="btn btn-primary btn-large" href="${createLink(controller: 'testShoppingCart', action: 'lomoRes')}">+ Añadir al Carro</a>
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-6 hero-feature">
            <div class="thumbnail">
                <img src="${createLinkTo(dir:'images',file:'polloMenu.png')}" alt="Pol">
                <div class="caption">
                    <h3>Pollo</h3>
                    <p>Queso fundido, pechuga a la plancha, deliciosos vegetales frecos, lechuga y salsa Match Food</p>
                    <p>
                        <a class="btn btn-primary btn-large" href="${createLink(controller: 'testShoppingCart', action: 'pollo')}">+ Añadir al Carro</a>
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-6 hero-feature">
            <div class="thumbnail">
                <img src="${createLinkTo(dir:'images',file:'Mexicano.png')}" alt="Mex" >
                <div class="caption">
                    <h3>Mexicano</h3>
                    <p>Carne desmechada, chile, queso mozzarella, tomate, guacamole, cilantro,
                    lechuga, nachos, cebolla roja, y salsa MatchFood.</p>
                    <p>
                        <a class="btn btn-primary btn-large" href="${createLink(controller: 'testShoppingCart', action: 'mexicano')}">+ Añadir al Carro</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<g:javascript>
$("#divCar").click(function () {
    var visibilidad = $("#divCarBox").css("visibility");
    if (visibilidad === "hidden")
        $("#divCarBox").css("visibility", "visible");
    else
        $("#divCarBox").css("visibility", "hidden");
})
</g:javascript>
</body>
</html>