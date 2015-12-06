<%-- 
    Document   : index
    Created on : 05/12/2015, 12:37:18 PM
    Author     : heredia
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="cdf.model.Model_Cdf_Estadistica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Mi Candidato Ideal</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../../css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="../../js/morris.js-0.5.1/morris.css">
        <link href="../../css/estilo.css" rel="stylesheet" media="screen">
    </head>
    <body>
        <%@include file="View_Cdf_Cabecera.jsp" %>

        <div class="container-fluid">
            <div class="row contenido">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 text-center">
                    <div class="resumen cand">
                        <h2 class="text-danger" style="margin-bottom: 30px;"><span class="label label-danger">Tu Candidato Ideal</span></h2>
                        <div class="row">
                            <%
                                
                                
                                Model_Cdf_Estadistica candidato=(Model_Cdf_Estadistica)(request.getSession().getAttribute("micandidatoideal"));                                
                                
                                %>                                
                                <div class="col-lg-4 col-md-4col-sm-4 col-xs-4 text-center">
                                <img style="margin-left: 30px;" src="../../<%=candidato.getCandidato().getFoto() %>" alt="Garcia" class="img-circle img-responsive" >
                            </div>
                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 text-center">
                                
                                <h4 style="font-weight: bold;margin-top: 50px;"><%=candidato.getCandidato().getCdf_candidato_nombre() %> </h4>
                                <h5><%= candidato.getCandidato().getCdf_candidato_partidopolitico() %></h5>
                                <p style="font-size: 16px;">Acabar con la corrupción y lobbies, Gobierno abierto y transparente e inhabilitacion a los corruptos para que no vuelvan a manejar el dinero del pueblo</p>
                            </div>

                        </div>

                    </div>
                    <div class="empiesa">
                        <section>
                            <ul id='services'>
                                <li>
                                    <div class='entypo-facebook'></div>
                                    <span>Facebook</span>
                                </li>
                                <li>
                                    <div class='entypo-twitter'></div>
                                    <span>Twitter</span>
                                </li>
                                <li>
                                    <div class='entypo-gplus'></div>
                                    <span>Google</span>
                                </li>
                                <li>
                                    <div class='entypo-linkedin'></div>
                                    <span>LinkedIn</span>
                                </li>
                            </ul>
                        </section> 
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 text-center">
                    <div class="ranking">
                        <div class="panel panel-default">
                            <div class="panel-heading"><h4 class="text-center text-uppercase" style="color: #ffffff;font-weight: bold;"> Mejor Propuesta </h4></div>
                            <div class="panel-body">
                                <h5 style="font-weight: bold;">SECTOR EDUCACION</h5>
                                <p>Fortalecer el proceso de acreditación de los Institutos Superiores Tecnológicos y  Pedagógicos. Establecer un Programa de Acreditación de Institutos y Universidades de acuerdo a estándares establecidos para garantizar la calidad de la educación superior.</p>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading"><h4 class="text-center text-uppercase" style="color: #ffffff;font-weight: bold;"> Estadistica</h4></div>
                            <div class="panel-body">
                                <div id="myfirstchart" style="height: 250px;"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
                                <%@include file="View_Cdf_Pie.jsp" %>
        <script src="../../js/jquery-1.9.1.min.js"></script>
        <script src="../../js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>

        <script>

            // Use Morris.Bar
            Morris.Bar({
                element: 'myfirstchart',
                data: [
                    {x: 'ECONOMIA', y: 35},
                    {x: 'SALUD', y: 28},
                    {x: 'EDUCACION', y: 45},
                    {x: 'AGRICULTURA', y: 65},
                    {x: 'PRODUCCION', y: 23},
                    {x: 'SEGURIDAD', y: 12}
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
