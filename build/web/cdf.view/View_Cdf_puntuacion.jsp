<script type="text/javascript" language="javascript" src="js/cdf.cdf_puntuacion.js"></script>
<div id="crud_Cdf_puntuacion_Save">
    <%@include file="crud_Cdf_puntuacion/crud_Cdf_puntuacion_Save.jsp"%>
</div>
<div  id="crud_Cdf_puntuacion_Controls" class="form-group">
<script>
    listar('crud_Cdf_puntuacion_Show', 'cdf.view/crud_Cdf_puntuacion/crud_Cdf_puntuacion_Controller.jsp', 'listar');
</script>

    <form method="post" action="" name="" id="" class="form-inline">
        <div class="input-group">
            <label class="input-group-addon"><span class="glyphicon glyphicon-search"></span>Buscar:</label>
            <input class="form-control" type="search" placeholder="Ingrese Busqueda" onkeyup="busquedaAjax(this, 'cdf.view/crud_Cdf_puntuacion/crud_Cdf_puntuacion_Controller.jsp', 'buscar', 'crud_Cdf_puntuacion_Show');"/>
        </div>
        <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-print"></span>PDF</button>
        <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-print"></span>EXCEL</button>
    </form>

</div>
<div id="crud_Cdf_puntuacion_Show" class="table-responsive"></div>