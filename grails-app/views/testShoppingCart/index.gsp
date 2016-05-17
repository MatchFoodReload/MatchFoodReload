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

    <div style="background: none repeat scroll 0 0 #FFFFFF;
    border: 1px solid #DDDDDD;
    border-radius: 6px 6px 6px 6px;
    bottom: 500px;
    left: auto;
    margin-left: 1150px;
    padding: 10px 0 0;
    position: fixed;
    text-align: center;
    width: 300px;
    z-index: 15;">
        <div class="body">
            <h1>Shopping Cart</h1>
            <div class="list">
                <table>
                    <thead>
                    <tr>

                        <th>Product</th>

                        <th>Qty</th>

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
                    Check out
                </g:remoteLink>
            </div>
            <h1>Products</h1>
            <div class="list">
                <table>
                    <thead>
                    <tr>

                        <th>Product</th>

                        <th>&nbsp;</th>

                    </tr>
                    </thead>
                    <tbody id="shoppingCartContent">
                    <g:each in="${com.metasieve.shoppingcart.Shoppable.list()}" var="product">
                        <tr>
                            <td>
                                ${product}
                            </td>
                            <td>
                                <g:remoteLink action="add"
                                              params="${[id:product.id, class:product.class, version:product.version]}"
                                              update="shoppingCartContent"
                                              onComplete="Effect.Pulsate('shoppingCartContent', {pulses: 1, duration: 1.0});">
                                    Add
                                </g:remoteLink>
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
                                    Add
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
                        <a class="btn btn-primary btn-large" href="${createLink(controller: 'testShoppingCart', action: 'vejetariano')}">+ Añadir al Carro</a>
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
                        <a class="btn btn-primary btn-large" href="${createLink(controller: 'testShoppingCart', action: 'FondueDeRes')}">+ Añadir al Carro</a>
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
                        <a class="btn btn-primary btn-large" href="${createLink(controller: 'testShoppingCart', action: 'LomoDeRes')}">+ Añadir al Carro</a>
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
</body>
</html>