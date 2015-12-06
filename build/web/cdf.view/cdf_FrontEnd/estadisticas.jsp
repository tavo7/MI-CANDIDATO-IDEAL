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
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
        <link href="../../css/estilo.css" rel="stylesheet" media="screen">
    </head>
    <body>

        <%@include file="View_Cdf_Cabecera.jsp" %>


        <div class="container-fluid">
            <div class="row contenido">
                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 text-center">
                    <div class="resumen">
                        <h2 class="text-danger"><samp>¡ comparacion de puntuación de candidatos con respecto al sector elegido !</samp></h2>
                        <p>
                            Observamos las proyecciones estadisticas que reflejan un histograma a la derecha.
                            El cual nos da un claro entendimiento sobre a donde se dirigen las propuestas con respecto al sector elegido.
                        </p>
                    </div>

                </div>
                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                    <div class="ranking">
                        <div class="panel panel-default">
                            <div class="panel-heading"><h4 class="text-center text-uppercase" style="color: #ffffff;font-weight: bold;"> Estadistica</h4></div>
                            <div class="panel-body">
                                <div id="myfirstchart" style="height: 250px;"></div>
                            </div>
                        </div>
                    </div>
                </div
            </div>
        </div>
    </div>

    <%@include file="View_Cdf_Pie.jsp" %>
    <script src="lib/jquery/jquery-1.11.3.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="../../js/jquery-1.9.1.min.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
    <script>

        // Use Morris.Bar
        Morris.Bar({
            element: 'myfirstchart',
            data: [
                {x: 'KEIKO', y: 35},
                {x: 'VERONICA', y: 28},
                {x: 'ALAN', y: 45},
                {x: 'TOLEDO', y: 65},
                {x: 'GUZMAN', y: 23},
                {x: 'PPK', y: 12}
            ],
            xkey: 'x',
            ykeys: ['y'],
            labels: ['Y']
        }).on('click', function (i, row) {
            console.log(i, row);
        });
    </script>
</body>
</html>
