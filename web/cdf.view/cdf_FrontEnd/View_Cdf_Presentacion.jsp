<%-- 
    Document   : index
    Created on : 05/12/2015, 12:37:18 PM
    Author     : heredia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Mi Candidato Ideal</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        
        <link href="../../css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="asset/css/estilo.css" rel="stylesheet" media="screen">
        <link href="../../css/estilo.css" rel="stylesheet" media="screen">
    </head>
    <body>
        <%@include file="View_Cdf_Cabecera.jsp" %>

        <div class="container-fluid">
            <div class="row contenido">
                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 text-center">
                    <div class="resumen">
                        <h2 class="text-danger">¿Aún no te decides?</h2>
                        <p>
                            Escoge los sectores que te interesan, puntúa las propuestas de cada postulante y encuentra el candidato ideal para ti.
                        </p>
                    </div>
                    <div class="empiesa">
                        <a href="View_Cdf_LLenarDatosUsuario.jsp" class="button"/>¡ Empieza Ahora !</a>  
                    </div>
                    <div>
                        <h3>Estadísticas</h3>
                        <span class="glyphicon glyphicon-arrow-down" aria-hidden="true"></span>
                        <span class="glyphicon glyphicon-arrow-down" aria-hidden="true"></span>
                        <span class="glyphicon glyphicon-arrow-down" aria-hidden="true"></span>
                        <br><br>
                        <div class="row estadisticas">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <h4><span class="label label-default">Candidatos</span>
                                    <img src="../../img/iconos/versus.png" alt="versus" class="" width="20" >
                                    
                                    <span class="label label-success">Sector</span>
                                </h4>
                                <a  data-toggle="modal" data-target="#myModal1">
                                <img src="../../img/iconos/e-1.png" alt="candidatos por sector" class="img-thumbnail" width="100" >
                                </a>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <h4><span class="label label-default">Sectores</span>
                                    <img src="../../img/iconos/versus.png" alt="versus" class="" width="20" >
                                    <span class="label label-danger">Candidato</span>
                                </h4>
                                <a  data-toggle="modal" data-target="#myModal2">
                                <img src="../../img/iconos/e-2.png" alt="candidatos por sector" class="img-thumbnail" width="100" >
                                </a>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <h4><span class="label label-default">Candidato</span>
                                    <img src="../../img/iconos/versus.png" alt="versus" class="" width="20" >
                                    <span class="label label-primary">Candidato</span>
                                </h4>
                                <a  data-toggle="modal" data-target="#myModal3">
                                <img src="../../img/iconos/e-3.png" alt="candidatos por sector" class="img-thumbnail" width="100" >
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                    <div class="ranking">
                        <div class="panel panel-default">
                            <div class="panel-heading"><h4 class="text-center text-uppercase" style="color: #ffffff;font-weight: bold;"> Ranking </h4></div>
                            <div class="panel-body">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th style="width: 120px;" >
                                                <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                                Candidato</th>
                                            <th class="text-center">
                                                <span class="glyphicon glyphicon-signal" aria-hidden="true"></span>
                                                Tendencia</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><img src="../../img/imagen-Veronika-Mendoza.jpg" alt="Veronika" class="img-circle" width="50" ></td>
                                            <td>
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em;width: 23%;">
                                                        23%
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><img src="../../img/imagen-Alejandro-Toledo.jpg" alt="Toledo" class="img-circle" width="50" ></td>
                                            <td>
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em;width: 20%;">
                                                        20%
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><img src="../../img/imagen-Alan-Garcia.jpg" alt="Garcia" class="img-circle" width="50" ></td>
                                            <td>
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em;width: 18%;">
                                                        18%
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><img src="../../img/imagen-Keiko-fujimori.jpg" alt="Fujimori" class="img-circle" width="50" ></td>
                                            <td>
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em;width: 16%;">
                                                        16%
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><img src="../../img/imagen-Cesar-Acuna-Peralta.jpg" alt="Acuña" class="img-circle" width="50" ></td>
                                            <td>
                                                <div class="progress">
                                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em;width: 10%;">
                                                        10%
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div
            </div>
        </div>
    </div>
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header"style="background: #b72626;border: 1px solid #8c8c8c">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title text-center" id="myModalLabel" style="color: #ffffff;font-weight: bold">¡ Elige un Sector !</h4>
                </div>
                <div class="modal-body">

                    <table class="table">
                        <thead>
                            <tr>
                                <th> <span class="glyphicon glyphicon-cloud" aria-hidden="true"> </span> SECTOR</th>
                                <th> <span class="glyphicon glyphicon-check" aria-hidden="true"> </span> ELIGE  </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><h4>Agropecuario</h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>
                            <tr>
                                <td><h4>Educacion</h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>
                            <tr>
                                <td><h4>Seguridad</h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>
                            <tr>
                                <td><h4>Produccion</h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>
                            <tr>
                                <td><h4>Transporte</h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>
                            <tr>
                                <td><h4>Justicia</h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer"style="border-bottom: 1px solid #b72626">
                    <p class="alert-warning text-left">Se visulizará el puntaje ponrcentual de cada candidato con respecto al sector elegido. </p>
                   <a href="estadisticas.jsp" type="button" class="btn btn-danger">Continuar</a>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header"style="background: #b72626;border: 1px solid #8c8c8c">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title text-center" id="myModalLabel" style="color: #ffffff;font-weight: bold">¡ Elije un Candidato !</h4>
                </div>
                <div class="modal-body">

                    <table class="table">
                        <thead style="font-weight: bold">
                            <tr>
                                <th colspan="2"><span class="glyphicon glyphicon-user" aria-hidden="true"> </span> CANDIDATO</th>
                                <th><span class="glyphicon glyphicon-check" aria-hidden="true"> </span>  ELIGE </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><img src="img/imagen-Veronika-Mendoza.jpg" alt="Toledo" class="img-circle" width="50" ></td>
                                <td><h4>Veronika Mendoza</h4> <h4><span class="label label-default">Frente Amplio</span></h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>
                            <tr>
                                <td><img src="img/imagen-Alan-Garcia.jpg" alt="Toledo" class="img-circle" width="50" ></td>
                                <td><h4>Alan Garcia Perez</h4> <h4><span class="label label-default">APRA</span></h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>
                            <tr>
                                <td><img src="img/imagen-Alejandro-Toledo.jpg" alt="Toledo" class="img-circle" width="50" ></td>
                                <td><h4>Alejandro Toledo Manrique</h4> <h4><span class="label label-default">Peru Posible</span></h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>

                            <tr>
                                <td><img src="img/imagen-Cesar-Acuna-Peralta.jpg" alt="Toledo" class="img-circle" width="50" ></td>
                                <td><h4>Cesar Acuña Peralta</h4> <h4><span class="label label-default">Alianza por el Cambio</span></h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>

                            <tr>
                                <td><img src="img/imagen-Julio-Guzman.jpg" alt="Toledo" class="img-circle" width="50" ></td>
                                <td><h4>Julio Guzman</h4> <h4><span class="label label-default">Todos por el Peru</span></h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>
                            <tr>
                                <td><img src="img/imagen-Keiko-fujimori.jpg" alt="Toledo" class="img-circle" width="50" ></td>
                                <td><h4>Keiko Fujimori </h4> <h4><span class="label label-default">Fuerza Popular</span></h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>
                            <tr>
                                <td><img src="img/imagen-Pedro-Pablo-Kuczynski.jpg" alt="Toledo" class="img-circle" width="50" ></td>
                                <td><h4>Pedro Pablo Kuczynski</h4> <h4><span class="label label-default">Perunao por el Cambio</span></h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer"style="border-bottom: 1px solid #b72626">
                    <p class="alert-warning text-left"> Dispondra de un grafico estadistico sobre la puntuacion del cantidato elegido en cada sector existente.</p>
                    <a href="estadisticas.jsp" type="button" class="btn btn-danger">Continuar</a>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header"style="background: #b72626;border: 1px solid #8c8c8c">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title text-center" id="myModalLabel" style="color: #ffffff;font-weight: bold">¡ Elije Tus Candidatos Probables!</h4>
                </div>
                <div class="modal-body">

                    <table class="table">
                        <thead>
                            <tr>
                                <th colspan="2"><span class="glyphicon glyphicon-user" aria-hidden="true"> </span> CANDIDATO</th>
                                <th><span class="glyphicon glyphicon-check" aria-hidden="true"> </span>  ELIGE </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><img src="img/imagen-Veronika-Mendoza.jpg" alt="Toledo" class="img-circle" width="50" ></td>
                                <td><h4>Veronika Mendoza</h4> <h4><span class="label label-default">Frente Amplio</span></h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>
                            <tr>
                                <td><img src="img/imagen-Alan-Garcia.jpg" alt="Toledo" class="img-circle" width="50" ></td>
                                <td><h4>Alan Garcia Perez</h4> <h4><span class="label label-default">APRA</span></h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>
                            <tr>
                                <td><img src="img/imagen-Alejandro-Toledo.jpg" alt="Toledo" class="img-circle" width="50" ></td>
                                <td><h4>Alejandro Toledo Manrique</h4> <h4><span class="label label-default">Peru Posible</span></h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>

                            <tr>
                                <td><img src="img/imagen-Cesar-Acuna-Peralta.jpg" alt="Toledo" class="img-circle" width="50" ></td>
                                <td><h4>Cesar Acuña Peralta</h4> <h4><span class="label label-default">Alianza por el Cambio</span></h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>

                            <tr>
                                <td><img src="img/imagen-Julio-Guzman.jpg" alt="Toledo" class="img-circle" width="50" ></td>
                                <td><h4>Julio Guzman</h4> <h4><span class="label label-default">Todos por el Peru</span></h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>
                            <tr>
                                <td><img src="img/imagen-Keiko-fujimori.jpg" alt="Toledo" class="img-circle" width="50" ></td>
                                <td><h4>Keiko Fujimori </h4> <h4><span class="label label-default">Fuerza Popular</span></h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>
                            <tr>
                                <td><img src="img/imagen-Pedro-Pablo-Kuczynski.jpg" alt="Toledo" class="img-circle" width="50" ></td>
                                <td><h4>Pedro Pablo Kuczynski</h4> <h4><span class="label label-default">Perunao por el Cambio</span></h4></td>
                                <td><input type="checkbox"value="1"> </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer"style="border-bottom: 1px solid #b72626">
                    <p class="alert-warning text-left "> Se realizara una comparacion entre candidatos con respecto a las puntuaciones por sectores existentes. </p>
                    
                    <a href="estadisticas.jsp" type="button" class="btn btn-danger">Continuar</a>
                </div>
            </div>
        </div>
    </div>

    <%@include file="View_Cdf_Pie.jsp" %>
    <script src="../../js/jquery-1.9.1.min.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
