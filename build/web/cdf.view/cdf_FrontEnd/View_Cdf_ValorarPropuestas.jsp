<%-- 
    Document   : admin
    Created on : 05/12/2015, 12:37:39 PM
    Author     : heredia
--%>

<%@page import="cdf.controller.Controller_Cdf_propuesta"%>
<%@page import="cdf.model.Model_Cdf_propuesta"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cdf.model.Model_Cdf_sector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Mi Candidato Ideal</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="asset/css/estilo.css" rel="stylesheet" media="screen">
        <link href="../../css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="asset/css/estilo.css" rel="stylesheet" media="screen">
        <link href="../../css/estilo.css" rel="stylesheet" media="screen">
        <style>

            p.clasificacion, p input[type = "submit"]{ font-size:18px;}


            input[type = "radio"]{ display:none;/*position: absolute;top: -1000em;*/}
            label{ color:grey;}


            .clasificacion{
                direction: rtl;
                unicode-bidi: bidi-override;
            }

            label:hover,
            label:hover ~ label{color:orange;}
            input[type = "radio"]:checked ~ label{color:orange;}

        </style>
    </head>
    <body>
        <%@include file="View_Cdf_Cabecera.jsp" %>

        <div class="container-fluid">
            <div class="row contenido">

                <div class="sector-1">
                    <form name="usuario" action="View_Cdf_ControllerValoracion.jsp" method="POST">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="ranking">
                                <div class="panel panel-default">
                                    <%
                                        Controller_Cdf_propuesta gestionpropuesta = new Controller_Cdf_propuesta();
                                        List<Model_Cdf_sector> list_sectores = (ArrayList<Model_Cdf_sector>) request.getSession().getAttribute("list_sectores");
                                        Integer contador2 = Integer.parseInt(request.getSession().getAttribute("contador").toString());
                                    %>
                                    <div class="panel-heading"><h4 class="text-center text-uppercase" style="color: #ffffff;font-weight: bold;"><%
                                        if (contador2 <= list_sectores.size() - 1) {
                                            out.print(list_sectores.get(contador2).getCdf_sector_nombre());
                                        }
                                            %> </h4></div>
                                    <div class="panel-body">
                                        <table class="table" style="margin: 0 auto;">
                                            <thead>
                                                <tr>
                                                    <th>Propuesta</th>
                                                    <th style="width: 120px;" class="text-center">Valora</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    Integer numerosector = Integer.parseInt(request.getSession().getAttribute("numerosector").toString());
                                                    Integer contador = Integer.parseInt(request.getSession().getAttribute("contador").toString());
                                                    if (contador <= numerosector - 1) {
                                                        List<Model_Cdf_propuesta> list_propuestas_sector = gestionpropuesta.getListar_cdf_propuesta(new Model_Cdf_propuesta(list_sectores.get(contador)));
                                                        for (int index1 = 0; index1 < list_propuestas_sector.size(); index1++) {
                                                %>
                                                <tr>
                                                    <td>
                                                        <p><%=list_propuestas_sector.get(index1).getCdf_propuesta_descripcion()%></p>
                                                    </td>
                                                    <td>
                                                        <div class="ec-stars-wrapper">
                                                            <select name="selectpropuesta" id="" class="form-control">
                                                                <option value="0" selected="selected">0</option>
                                                                <option value="1">1</option>
                                                                <option value="2">2</option>
                                                                <option value="3">3</option>
                                                                <option value="4">4</option>
                                                                <option value="5">5</option>
                                                            </select>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <%
                                                        }

                                                    } else {
                                                        response.sendRedirect("View_Cdf_ControllerMiCandidatoIdeal.jsp");
                                                    }
                                                %>                                              
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="continuar">
                                <input type="submit" id="continuar" class="button" value="! Continuar !"/> 
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
        <%@include file="View_Cdf_Pie.jsp" %>
        <script src="lib/jquery/jquery-1.11.3.min.js"></script>
        <script src="lib/bootstrap/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <script src="../../js/jquery-1.9.1.min.js"></script>
        <script src="../../js/bootstrap.min.js"></script>
    </body>
</html>
