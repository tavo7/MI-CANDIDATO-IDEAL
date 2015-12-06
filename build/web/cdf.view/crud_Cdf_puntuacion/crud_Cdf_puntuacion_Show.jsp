<!--

 PageWeb Creado por Framework CESDEVELOPER (cdf) desarrollado en Java
 Author: Ing°. Alexander Manuel Céspedes Leonardo (Manuel Cés)
 Facebook: https://www.facebook.com/leonel.cespedesleonardo
 Telefono: 203957
 Bitel: 935589233
 Email: a_ces10@hotmail.com

-->

<%@page import="java.util.List"%>
<%@page import="cdf.model.Model_Cdf_puntuacion"%>
<%@page import="cdf.controller.Controller_Cdf_puntuacion"%>
<%

    List<Model_Cdf_puntuacion> List_cdf_puntuacion =(List<Model_Cdf_puntuacion>)request.getSession().getAttribute("list_cdf_puntuacion");
%>

<table class="table table-responsive table-hover table-bordered" id="Jtabla_cdf_puntuacion">
    <thead>
    <tr>
        <th class="text-center">
            Id
        </th>
        <th class="text-center">
            Candidato
        </th>
        <th class="text-center">
            Fecha
        </th>
        <th class="text-center">
            Hora
        </th>
        <th colspan="2" class="text-center">
            <button type="button" data-toggle="modal" data-target=".modaldialog" data-whatever="@getbootstrap" class="btn btn-primary">
                    <i class="glyphicon glyphicon-plus" title="Agregar"></i></button>
        </th>
    </tr>
    </thead>
    <tbody>
        <%
            for (int index = 0; index < List_cdf_puntuacion.size(); index++) {
        %>
    <tr class="gradeC">
        <td>
            <%=List_cdf_puntuacion.get(index).getCdf_puntuacion_id() %>
        </td>
        <td>
            <%=List_cdf_puntuacion.get(index).getCdf_candidato_candidato().getCdf_candidato_nombre() %>
        </td>
        <td>
            <%=List_cdf_puntuacion.get(index).getCdf_puntuacion_fecha() %>
        </td>
        <td>
            <%=List_cdf_puntuacion.get(index).getCdf_puntuacion_hora() %>
        </td>
        <td class="text-center">   
            <a href="javascript:actualizar('crud_Cdf_puntuacion_Save','cdf.view/crud_Cdf_puntuacion/crud_Cdf_puntuacion_Controller.jsp','<%= List_cdf_puntuacion.get(index).getCdf_puntuacion_id()
            %>','enviomodificar');" class="btn btn-warning"><i class="glyphicon glyphicon-edit" title="Actualizar"></i></a>
        </td>
        <td class="text-center">
            <a href="javascript:actualizar_eliminar('crud_Cdf_puntuacion_Show','cdf.view/crud_Cdf_puntuacion/crud_Cdf_puntuacion_Controller.jsp','<%=List_cdf_puntuacion.get(index).getCdf_puntuacion_id()
            %>','eliminar');" class="btn btn-danger"><i class="glyphicon glyphicon-remove" title="Eliminar"></i></a>
        </td>
    </tr>
        <%
            }

        %>
    </tbody>
</table>