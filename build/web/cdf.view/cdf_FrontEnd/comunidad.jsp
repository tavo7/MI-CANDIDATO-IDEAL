<%-- 
    Document   : index
    Created on : 05/12/2015, 12:37:18 PM
    Author     : heredia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Comunidad</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../../css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="../../css/estilo.css" rel="stylesheet" media="screen">
    </head>
    <body>

        <header class="cab-pag">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#"><img src="img/iconos/logo.png" alt="candidatos por sector" class="logo img-responsive" width="200" ></a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="menu collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="<% out.print(""); %>"><a href="View_Cdf_Presentacion.jsp">INICIO</a></li>
                            <li class="<% out.print("active"); %>"><a href="comunidad.jsp">COMUNIDAD</a></li>
                            <li class="<% out.print("");%>"><a href="politicas.jsp">POLITICAS</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        </header>

        <div class="container-fluid">
            <div class="row contenido">
                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 text-center">
                    <div class="resumen">
                        <h2 class="text-danger"><samp>¡ Nuestra Comunidad !</samp></h2>
                        <p>
                            Nosotros somos una equipo que busca informar a los ciudadanos sobre las propuestas electorales de todos los candidatos. 
                            A través de nuestra aplicación, podrás enterarte de cada propuesta y puntuar a cada una, obteniendo como resultado el candidato ideal según tus intereses.
                            Buscamos ser una fuente honesta que incentiva la competencia limpia y equitativa, además de mostrar las tendencias según qué candidato es ideal para cada persona
                            y no cuál es el favorito sin saber más sobre su plan de trabajo.
                        </p>
                    </div>
                    <div class="empiesa">
                        <a href="admin.jsp" class="button"/>¡ Visitanos !</a>  
                    </div>

                </div>
                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                    <div class="ranking">
                        <div class="panel panel-default">
                            <div class="panel-heading"><h4 class="text-center text-uppercase" style="color: #ffffff;font-weight: bold;"> DISCUTE CON NOSOTROS </h4></div>
                            <div class="panel-body">
                            </div>
                        </div>
                    </div>
                </div
            </div>
        </div>
    </div>

    <%@include file="View_Cdf_Pie.jsp" %>
    <script src="../../js/jquery-1.9.1.min.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
    <script src="lib/jquery/jquery-1.11.3.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
