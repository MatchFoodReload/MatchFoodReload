<%--
  Created by IntelliJ IDEA.
  User: dabaq
  Date: 19/04/2016
  Time: 4:06 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div class="col-lg-5" style="padding: 30px; height: 600px;">
    <div style="padding-left: 30px;">
        <h1>Mi Perfil</h1>
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREhk4mZIuXn3QFgYA8CzRtktBV_2IwydIfFYSED3w_x-iV8GVLbg" style="width: 20%; height: 25%; margin: 0;  padding: 0; border-radius: 50%; overflow: hidden;" />
    </div>

    <div class="content" style="padding: 30px;">
        <div>
            <label class="col-lg-6 control-label">Nombre:</label>
            <p class="col-lg-6">${nombre}</p>
        </div>
        <br>
        <div>
            <label class="col-lg-6 control-label">Correo Electrónico:</label>
            <p class="col-lg-6">${correo}</p>
        </div>
        <br>
        <div>
            <label class="col-lg-6 control-label">Teléfono:</label>
            <p class="col-lg-6">${celular}</p>
        </div>
        <br>
        <div>
            <label class="col-lg-6 control-label">Dirección</label>
            <p class="col-lg-6">${direccion}</p>
        </div>
        <br>
    </div>
</div>
</body>
</html>

