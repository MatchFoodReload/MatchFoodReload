<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
        <title>Match Food</title>
        <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'logoMatchFoodSmall.png')}" type="image/x-icon">
        <asset:javascript src="jquery-2.1.3.js" />
        <asset:javascript src="bootstrap/js/bootstrap.min.js" />
        <asset:stylesheet src="bootstrap/css/bootstrap.min.js" />
        <asset:stylesheet src="font-awesome-4.5.0/css/font-awesome.min.css" />
        <asset:stylesheet src="principal.css" />
		<asset:stylesheet src="social-buttons.css" />
		<asset:javascript src="main.js" />
        <asset:javascript src="principal.js" />
		<g:layoutHead/>
	</head>
	<body>
		<nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${createLink(url: '/', action: 'index')}"><img style="margin-top: 6px" src="${createLinkTo(dir:'images',file:'letrasMatchFood.png')}" alt="Matchfood" width="100"/></a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="${createLink(url: '/', action: 'index')}">Inicio</a></li>
                        <li><a href="${createLink(controller: 'menu', action: 'index')}">Menú</a></li>
                        <li><a href="${createLink(controller: 'prepare', action: 'index')}">Prepáralo a tu gusto</a></li>
                        <li><a href="${createLink(controller: 'company', action: 'index')}">¿Quiénes Somos?</a></li>
                        <li><a href="${createLink(controller: 'contact', action: 'index')}">Contáctenos</a></li>
                        <!--li><a id="administar" href="${createLink(controller: 'administrar', action: 'index')}">Administrar</a></li-->
                    </ul>
                    <sec:ifNotLoggedIn>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown" id="dropdownList" >
                            <a class="nav navbar-nav navbar-right" id="navbarRight">
                                <a href="#" id="dropdownNav" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Iniciar Sesión <span class="caret"></span></a>
                                <ul class="dropdown-menu" id="dropdown-menuNav" role="menu" style="padding-left: 20px; padding-right: 20px; padding-top: 10px; padding-bottom: 10px;">
                                    <div style="width: 300px;">
                                        <div class='fheader'><h3><b>Bienvenido</b></h3></div>
                                        <form action='/MatchFood/j_spring_security_check' method='POST' id='loginForm' autocomplete='off'>
                                            <p>
                                                <label for='username'>Usuario</label>
                                                <input type='text' class="form-control" name='j_username' id='username' placeholder="Usuario o Correo Electrónico" />
                                            </p>

                                            <p>
                                                <label for='password'>Contraseña:</label>
                                                <input class="form-control" placeholder="Password" type="password" name='j_password' id='password'/>
                                            </p>

                                            <p id="remember_me_holder">
                                                <input type='checkbox' class='chk' name='_spring_security_remember_me' id='remember_me' />
                                                <label for='remember_me'>Recuérdame</label>
                                            </p>
                                            <div id="fb-root"></div>
                                            <div style="text-align: left; padding-bottom: 10px;">
                                                <a id="loginFB" class="btn btn-block btn-social btn-facebook" style="text-align: left; width: 100%">
                                                    <span class="fa fa-facebook"></span>&emsp;Inicia Sesión con Facebook
                                                </a>
                                            </div>
                                            <p>
                                                <a href="${createLink(controller: 'register', action: 'index')}">¿No estás registrado?</a>
                                            </p>
                                            <p>
                                                <input class="btn btn-primary" type='submit' id="submit" value='Iniciar Sesión'/>
                                            </p>
                                        </form>
                                    </div>
                                </ul>
                            </a>
                        </li>
                    </ul>
                </div>
                </sec:ifNotLoggedIn>
                <sec:ifLoggedIn>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown" id="dropdownListLogged" >
                            <a class="nav navbar-nav navbar-right" id="navbarRightLogged">
                                <a href="#" id="dropdownNavLogged" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Hola, <sec:loggedInUserInfo field="username" /> <span class="caret"></span></a>
                                <ul class="dropdown-menu" id="dropdown-menuNavLogged" role="menu" style="padding-left: 5px; padding-right: 5px; padding-top: 5px; padding-bottom: 10px;">
                                    <div style="width: 300px;">
                                        <div style="padding: 10px;">
                                            <b>Bienvenido <sec:loggedInUserInfo field="username" /></b>
                                        </div>
                                        <div class="list-group table-of-contents">
                                            <a class="list-group-item" href="${createLink(controller: 'profile', action: 'index')}">Perfil</a>
                                            <a class="list-group-item" href="${createLink(controller: 'favorites', action: 'index')}">Favoritos</a>
                                            <a class="list-group-item" href="${createLink(controller: 'orders', action: 'index')}">Mis Pedidos</a>
                                            <a class="list-group-item" href="${createLink(controller: 'TestShoppingCart', action: 'index')}">Carrito de Compras</a>
                                        </div>
                                        <g:form controller="logout">
                                            <g:submitButton class="btn btn-primary" name="logout" value="Cerrar Sesión" />
                                        </g:form>
                                    </div>
                                </ul>
                            </a>
                        </li>
                    </ul>
                    </div>
                </sec:ifLoggedIn>
            </div>
        </nav>
        <script >
            $(document).on('click', '#profileBtn', function(e){
                document.getElementById("profileBtn").href= "${createLink(controller: 'profileFB' , action:'index')}";
            })
            $(document).on('click', '#favBtn', function(e){
                document.getElementById("favBtn").href= "${createLink(controller: 'favorites' , action:'index')}";
            })

            $(document).on('click', '#reqBtn', function(e){
                document.getElementById("reqBtn").href= "${createLink(controller: 'orders' , action:'index')}";
            })
        </script>
		<g:layoutBody/>
        <div class="col-sm-12" style="padding: 20px;background-color: darkgray;">
            <h5 style="text-align: center; color: white;" class="footer-copyright">
                Todos los derechos reservados © Match Food - 2016
            </h5>
        </div>
	</body>
</html>
