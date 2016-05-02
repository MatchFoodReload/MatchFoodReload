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
                        <a class="btn btn-primary btn-large" href="${createLink(controller: 'testShoppingCart', action: 'index')}">+ Añadir al Carro</a>
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
                        <a class="btn btn-primary btn-large" id="btn_san_2">+ Añadir al Carro</a>
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
                        <a class="btn btn-primary btn-large" id="btn_san_3">+ Añadir al Carro</a>
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
                        <a class="btn btn-primary btn-large" id="btn_san_4">+ Añadir al Carro</a>
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
                        <a class="btn btn-primary btn-large" id="btn_san_5">+ Añadir al Carro</a>
                        <!--a class="btn btn-primary btn-large" href="${createLink(controller: 'menu', action: 'makeOrderT2')}">+ Añadir al Carro</a-->
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
                        <a class="btn btn-primary btn-large" id="btn_san_6">+ Añadir al Carro</a>
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
                        <a class="btn btn-primary btn-large" id="btn_san_7">+ Añadir al Carro</a>
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
                        <a class="btn btn-primary btn-large" id="btn_san_8">+ Añadir al Carro</a>
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
                        <a class="btn btn-primary btn-large" id="btn_san_9">+ Añadir al Carro</a>
                        <!--a class="btn btn-primary btn-large" href="${createLink(controller: 'menu', action: 'makeOrderT3')}">+ Añadir al Carro</a-->
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>