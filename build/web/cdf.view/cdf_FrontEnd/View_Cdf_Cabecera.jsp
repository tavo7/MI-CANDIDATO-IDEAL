<%-- 
    Document   : cabecera
    Created on : 05/12/2015, 12:47:12 PM
    Author     : heredia
--%>

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
                <a class="navbar-brand" href="#"><img src="../../img/iconos/logo.png" alt="candidatos por sector" class="logo img-responsive" width="200" ></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="menu collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="<% out.print("active"); %>"><a href="View_Cdf_Presentacion.jsp">INICIO</a></li>
                    <li class="<% out.print(""); %>"><a href="comunidad.jsp">COMUNIDAD</a></li>
                    <li class="<% out.print(""); %>"><a href="politicas.jsp">POLITICAS</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</header>