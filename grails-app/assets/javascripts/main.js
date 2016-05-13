/**
 * Created by Crow on 04/04/2016.
 */
$(function() {

    var app_id = '219219088445493';
    var scopes = 'public_profile,email, user_friends';
    var btn_login = '<a id="loginFB" class="btn btn-block btn-social btn-facebook" style="text-align: left; width: 100%">'+
        '<span class="fa fa-facebook"></span>&emsp;Inicia Sesión con Facebook'+
        '</a>';
    var div_session = "<ul class='nav navbar-nav navbar-right' id ='facebook-session' >"+
        '<li href="#" class="dropdown-toggle" id="dropFacebookLoginNav" data-toggle="dropdown" role="button" aria-expanded="false" style="padding-left: 20px; padding-right: 20px " width="40px" height="40px"><img class="img-circle"> <span class="caret"></span></li>'+
        '<ul class="dropdown-menu" id="dropdown-menuFacebookLoginNav" role="menu" style="padding-left: 20px; padding-right: 20px; padding-top: 10px; padding-bottom: 10px;">'+
        '<p>'+
        '<div id="textName"><strong></strong></div>'+
        '</p>'+
        '<div class="list-group table-of-contents">'+
        '<a class="list-group-item" id="profileBtn">Perfil</a>'+ //profileFB/index
        '<a class="list-group-item" id="favBtn">Favoritos</a>'+ //favorites/index
        '<a class="list-group-item" id="reqBtn">Mis Pedidos</a>'+ //orders/index
        '<a class="list-group-item" id="carComp">Mi Carrito de Compras</a>'+ //TestShoppingCart/index
        '</div>'+
        '<li class="divider"></li>'+
        '<div style="text-align: left; padding-bottom: 10px;">'+
        '<a href="" id="logoutFB" class="btn btn-block btn-social btn-facebook" style="text-align: left; width: 100%">'+
        '<span class="fa fa-facebook"></span>&emsp;Cerrar sesión'+
        '</a>'+
        '</div>'+
        '</ul>'+
        '</ul>';
    var friends = [];
    window.fbAsyncInit = function() {
        FB.init({
            appId      : app_id,
            cookie     : true,
            status     : true,
            xfbml      : true,
            version    : 'v2.5'
        });

        FB.getLoginStatus(function(response) {
            statusChangeCallback(response, function(){

            });
        });
    };

    var statusChangeCallback = function(response, callback) {
        console.log('statusChangeCallback');
        console.log(response);

        if (response.status === 'connected') {
            getFacebookData();
        } else {
            callback(false);
        }
    }

    var checkLoginState = function(callback) {
        FB.getLoginStatus(function(response) {
            statusChangeCallback(response, function(data){
                callback(data);
            });
        });
    }

    var getFacebookData = function(){
        FB.api('/me', function(response) {
            disappear();
            $('#dropdownList').after(div_session);
            $('#textName strong').text(response.name);
            $('#dropFacebookLoginNav img').attr('src','http://graph.facebook.com/'+response.id+'/picture?type=small');

            //Parte para la vista del perfil del usuario logueado con Facebook
            $('#imgFrame img').attr('src','http://graph.facebook.com/'+response.id+'/picture?type=large');
            $('#nameSpace strong').text(response.name);
        })
        FB.api(
            '/me/friends',
            'GET',
            {},
            function(response) {
                var count= 0;
                addRows();
                $.each(response.data, function(i, item) {
                    var nameToShow = item.name;
                    count++;
                    friends.push('<img src="http://graph.facebook.com/'+item.id+'/picture?type=square" class="pic" title="'+item.name+'" > </img>');
                    if(count%4==0){
                        friends.push('</div>' +
                            '</div>');
                        addRows();
                    }
                });
                $('#gridContainer').append(friends.join(''));
            }
        );
    }
    function addRows(){
        friends.push('<div class="row">');
        friends.push('<div class="col-sm-4">');
    }
    var facebookLogin = function(){
        checkLoginState(function(response) {
            if (!response) {
                FB.login(function(response) {
                    if (response.status == 'connected')
                        getFacebookData();
                }, {scope: scopes})
            }
        })
    }

    var facebookLogout = function() {
        FB.getLoginStatus(function(response) {
            if (response.status === 'connected') {
                FB.logout(function(response) {
                    appear();
                    appearLoginButton();
                    $('#facebook-session').remove();
                    redirect();
                })
            }
        });

    }

    $(document).on('click', '#loginFB', function(e){
        e.preventDefault();
        facebookLogin();
        disappearLoginButton()
    })

    $(document).on('click', '#logoutFB', function(e){
        e.preventDefault();
        if (confirm("¿Está seguro?")) {
            facebookLogout();
        }else
            return false;
    })

    function createLink(id,controller,action){
        document.getElementById(id).href = "${createLink(controller: '"+ "\'controller\'"+", action: '"+ "\'index\')}"
    }
    function disappearLoginButton(){
        document.getElementById("loginFB").style.visibility = "hidden";
    }
    function appearLoginButton(){
        document.getElementById("loginFB").style.visibility = "visible";
    }
    function disappear ()
    {
        document.getElementById("dropdownNav").style.visibility = "hidden";
        document.getElementById("dropdown-menuNav").style.visibility = "hidden";
    }

    function appear ()
    {
        document.getElementById("dropdownNav").style.visibility = "visible";
        document.getElementById("dropdown-menuNav").style.visibility = "visible";
    }
    function redirect(){
        $(document).on('click', '#logoutFB', function(e){
            document.getElementById("logoutFB").href= "${createLink(url: '/' , action:'index')}";
        })
    }
})
