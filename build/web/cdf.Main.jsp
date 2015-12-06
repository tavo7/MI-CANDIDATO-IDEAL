<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <!-- 
     View Creado por Framework CESDEVELOPER desarrollado en Java
    Author: Ing. Alexander Manuel Céspedes Leonardo
    Telefono: 203957
    Bitel: 935589233
    Email: a_ces10@hotmail.com
    -->

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


        <title>Login</title>


        <script>
            function redireccionar(div, url) {
                var contenedor = '#' + div;

                $.post(url, function (data) {
                    //var capture = url.replace("cdf.view/View", "form_crud_View");
                    //capture = capture.replace(".jsp", "");

                    $(contenedor).html(data);

                    //slideUp(capture);
                    //Estamos Probando CÃ³digo, Debemos de tener un framework de esta manera y otro que genere modales
                });
            }
            function slideDown(div, inputfocus) {

                var contenedor = '#' + div;
                var a = document.getElementById(div);
                $(contenedor).slideDown('fast');

                //El elemento input codigo hace referencia segun nuestra estructura al tercer elemento
                a.elements[2].focus();
            }
            function slideUp(div) {
                var contenedor = '#' + div;
                $(contenedor).toggle();
            }


            function busquedaAjax(obj, url, param, div) {
                var valorSeleccionado = obj.value;
                var contenedor = '#' + div;
                $.post(url, {accion: param, input_buscar: valorSeleccionado}, function (data) {
                    $(contenedor).html(data);
                });
            }

        </script>
        <script>
            function accionjs(url, div, formid) {
                var formulario = "#" + formid;
                var contenedor = '#' + div;
                $.post(url, $(formulario).serialize(), function (data) {
                    $(contenedor).html(data);
                    $('.modaldialog').modal("hide");
                });
            }

            function actualizar(div, url, primarykey, accion) {
                var contenedor = '#' + div;
                $.post(url, {primarykey: primarykey, accion: accion}, function (data) {
                    $(contenedor).html(data);
                    $('.modaldialog').modal();
                });
            }
            function actualizar_propuesta(div, url, primarykey, accion) {
                var contenedor = '#' + div;
                 var candidato=primarykey.split("$$")[0];
                var sector=primarykey.split("$$")[1];
                 $.post(url, {candidato:candidato,sector:sector, accion: accion}, function (data) {
                    $(contenedor).html(data);
                    $('.modaldialog').modal();
                });
            }
            function actualizar_eliminar(div, url, primarykey, accion) {
                var contenedor = '#' + div;
                $.post(url, {primarykey: primarykey, accion: accion}, function (data) {
                    $(contenedor).html(data);

                });
            }
            function actualizar_eliminar_propuesta(div, url, primarykey, accion) {
                var contenedor = '#' + div;
                var candidato=primarykey.split("$$")[0];
                var sector=primarykey.split("$$")[1];
                $.post(url, {candidato:candidato,sector:sector, accion: accion}, function (data) {
                    $(contenedor).html(data);
                });
            }
            
            function listar(div, url, accion) {
                var contenedor = '#' + div;
                $.post(url, {accion: accion}, function (data) {
                    $(contenedor).html(data);
                });
            }

        </script>
        <script type="text/javascript" language="javascript" src="js/jquery-1.9.1.min.js"></script>  
        <script type="text/javascript" language="javascript" src="js/bootstrap.min.js"></script>  
        <link rel="stylesheet" href="css/font-awesome.css"/>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
    </head>
    <body>
        <div class="banner-link">
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>                        
                        </button>
                        <a class="navbar-brand" href="#">Demo CDF</a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Home</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Menu<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="javascript:redireccionar('cdf-container','cdf.view/View_Cdf_candidato.jsp');">Candidato</a></li>
                                    <li><a href="javascript:redireccionar('cdf-container','cdf.view/View_Cdf_sector.jsp');">Sector</a></li>
                                    <li><a href="javascript:redireccionar('cdf-container','cdf.view/View_Cdf_propuesta.jsp');">Propuesta</a></li>                                    
                                    <li><a href="javascript:redireccionar('cdf-container','cdf.view/View_Cdf_usuario.jsp');">Usuario</a></li>
                                    <li><a href="javascript:redireccionar('cdf-container','cdf.view/View_Cdf_valoracion.jsp');">Valoracion</a></li>
                                    <li><a href="javascript:redireccionar('cdf-container','cdf.view/View_Cdf_puntuacion.jsp');">Puntuacion</a></li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Céspedes</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Aqui se despliegan los links de las tablas maestras -->
        </div>
        <div id="cdf-container">


        </div>
        <!-- end login -->

    </body>

</html>