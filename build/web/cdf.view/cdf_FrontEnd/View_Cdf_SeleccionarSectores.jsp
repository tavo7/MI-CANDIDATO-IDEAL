<%@page import="cdf.model.Model_Cdf_sector"%>
<%@page import="cdf.controller.Controller_Cdf_sector"%>
<%@page import="cdf.model.Model_Cdf_valoracion"%>
<%@page import="java.util.List"%>
<%@page import="cdf.controller.Controller_Cdf_valoracion"%>
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
    </head>
    <body>
        <%@include file="View_Cdf_Cabecera.jsp" %>

        <div class="container-fluid">
            <div class="row contenido">
                <form name="cdf_sectores" action="View_Cdf_ControllerSectoresSeleccionados.jsp" method="POST">

                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="ranking">
                            <div class="panel panel-default">
                                <div class="panel-heading"><h4 class="text-center text-uppercase" style="color: #ffffff;font-weight: bold;"> SECTORES</h4></div>
                                <div class="panel-body">
                                    <table class="table" style="margin: 0 auto;max-width: 350px;">
                                        <thead>
                                            <tr>
                                                <th class="text-right"><input type="checkbox"value="1"> <span style="margin-left: 10px;">Todos</span> </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                Controller_Cdf_sector gestion_cdf_sector = new Controller_Cdf_sector();
                                                List<Model_Cdf_sector> List_cdf_sector = gestion_cdf_sector.getListar_cdf_sector(null);
                                                for (int index = 0; index < List_cdf_sector.size(); index++) {
                                            %>


                                            <tr>
                                                <td><input type="checkbox" name="checksectores" value="<%=List_cdf_sector.get(index).getCdf_sector_id()%>"> <span style="margin-left: 10px;"><%=List_cdf_sector.get(index).getCdf_sector_nombre()%></span>  </td>
                                            </tr>
                                            <%
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
                            <input type="submit" class="button" value="! Continuar !"/> 
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <%@include file="View_Cdf_Pie.jsp" %>
        <script src="../../js/jquery-1.9.1.min.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
        <script src="lib/jquery/jquery-1.11.3.min.js"></script>
        <script src="lib/bootstrap/js/bootstrap.min.js"></script>ghj f ghj d fg
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

    </body>
</html>
