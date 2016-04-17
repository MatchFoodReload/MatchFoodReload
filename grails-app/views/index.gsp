<!DOCTYPE html>
<html>
	<head>
        <meta name="layout" content="main">
	</head>
	<body>
        <div id="usuario-Facebook">
        </div>
        <!--Script to load the JavaScript SDK to use FB login-->

        <div id="page-body" role="main" style="padding: 10px; width: 100%">
            <div class="mainImg"><img  style ="max-width: 100%; height: 100%;" src="${createLinkTo(dir:'images',file:'comparteInicio.png')}" alt="Princ"/></div>

            <div class="row">
                <div class="col-md-4">
                    <h2>Carne de Res</h2>
                    <div class="imgCarne"><img src="${createLinkTo(dir:'images',file:'carneDesmechada.png')}" alt="CarneDes" height="200" width="300"/></div>
                    <p>
                        Carne desmechada, queso amarillo, lechuga, tomate, pimentón, apio, mostaza, salsa BBQ, pasta de
                        tomate, cebolla roja y salsa Match Food
                    </p>
                    <div class="stars">
                        <form action="">
                            <input class="star star-5" id="star-5-carne" type="radio" name="star" checked="checked"/>
                            <label class="star star-5" for="star-5-carne"></label>
                            <input class="star star-4" id="star-4-carne" type="radio" name="star"/>
                            <label class="star star-4" for="star-4-carne"></label>
                            <input class="star star-3" id="star-3-carne" type="radio" name="star"/>
                            <label class="star star-3" for="star-3-carne"></label>
                            <input class="star star-2" id="star-2-carne" type="radio" name="star"/>
                            <label class="star star-2" for="star-2-carne"></label>
                            <input class="star star-1" id="star-1-carne" type="radio" name="star"/>
                            <label class="star star-1" for="star-1-carne"></label>
                        </form>
                    </div>
                </div>
                <div class="col-md-4">
                    <h2>Vegetariano</h2>
                    <div class="imgCarne"><img src="${createLinkTo(dir:'images',file:'vegetariano.png')}" alt="Veg" height="200" width="300"/></div>
                    <p>
                        Estragón, lechuga romana, tomate, cebolla, champiñones, zanahoria, apio, pimentón, maíz, salsa teriyaki,
                        queso amarillo y salsa Match Food Reload
                    </p>
                    <div class="stars">
                        <form action="">
                            <input class="star star-5" id="star-5-vege" type="radio" name="star"/>
                            <label class="star star-5" for="star-5-vege"></label>
                            <input class="star star-4" id="star-4-vege" type="radio" name="star" checked="checked"/>
                            <label class="star star-4" for="star-4-vege"></label>
                            <input class="star star-3" id="star-3-vege" type="radio" name="star"/>
                            <label class="star star-3" for="star-3-vege"></label>
                            <input class="star star-2" id="star-2-vege" type="radio" name="star"/>
                            <label class="star star-2" for="star-2-vege"></label>
                            <input class="star star-1" id="star-1-vege" type="radio" name="star"/>
                            <label class="star star-1" for="star-1-vege"></label>
                        </form>
                    </div>
                </div>
                <div class="col-md-4">
                    <h2>Mexicano</h2>
                    <div class="imgCarne"><img src="${createLinkTo(dir:'images',file:'Mexicano.png')}" alt="Mex" height="200" width="300"/></div>
                    <p>
                        Carne desmechada, chile, queso mozzarella, tomate, guacamole, cilantro, lechuga, nachos, cebolla roja,
                        y salsa Match Food Hot
                    </p>
                    <div class="stars">
                        <form action="">
                            <input class="star star-5" id="star-5-mexi" type="radio" name="star"/>
                            <label class="star star-5" for="star-5-mexi"></label>
                            <input class="star star-4" id="star-4-mexi" type="radio" name="star" checked="checked"/>
                            <label class="star star-4" for="star-4-mexi"></label>
                            <input class="star star-3" id="star-3-mexi" type="radio" name="star"/>
                            <label class="star star-3" for="star-3-mexi"></label>
                            <input class="star star-2" id="star-2-mexi" type="radio" name="star"/>
                            <label class="star star-2" for="star-2-mexi"></label>
                            <input class="star star-1" id="star-1-mexi" type="radio" name="star"/>
                            <label class="star star-1" for="star-1-mexi"></label>
                        </form>
                    </div>
                </div>
            </div>
            <a href="${createLink(controller: 'register', action: 'showLoggedUser')}">Nombre de Usuario</a>
            <g:form controller="logout">
                <g:submitButton name="logout" value="Salir" />
            </g:form>
        </div>
	</body>
</html>

