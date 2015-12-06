<!--

 PageWeb Creado por Framework CESDEVELOPER (cdf) desarrollado en Java
 Author: Ing°. Alexander Manuel Céspedes Leonardo (Manuel Cés)
 Facebook: https://www.facebook.com/leonel.cespedesleonardo
 Telefono: 203957
 Bitel: 935589233
 Email: a_ces10@hotmail.com

-->

<%@page import="java.util.List"%>
<%@page import="cdf.model.Model_Cdf_valoracion"%>
<%@page import="cdf.controller.Controller_Cdf_valoracion"%>
<%

    List<Model_Cdf_valoracion> List_cdf_valoracion =(List<Model_Cdf_valoracion>)request.getSession().getAttribute("list_cdf_valoracion");
%>

<table class="table table-responsive table-hover table-bordered" id="Jtabla_cdf_valoracion">
    <thead>
    <tr>
        <th class="text-center">
            Id
        </th>
        <th class="text-center">
            Valor
        </th>
        <th class="text-center">
            Fechavaloracion
        </th>
        <th class="text-center">
            Horavaloracion
        </th>
        <th class="text-center">
            Usuario
        </th>
        <th class="text-center">
            Candidato
        </th>
        <th class="text-center">
            Sector
        </th>
        <th colspan="2" class="text-center">
            <button type="button" data-toggle="modal" data-target=".modaldialog" data-whatever="@getbootstrap" class="btn btn-primary">
                    <i class="glyphicon glyphicon-plus" title="Agregar"></i></button>
        </th>
    </tr>
    </thead>
    <tbody>
        <%
            for (int index = 0; index < List_cdf_valoracion.size(); index++) {
        %>
    <tr class="gradeC">
        <td>
            <%=List_cdf_valoracion.get(index).getCdf_valoracion_id() %>
        </td>
        <td>
            <%=List_cdf_valoracion.get(index).getCdf_valoracion_valor() %>
        </td>
        <td>
            <%=List_cdf_valoracion.get(index).getCdf_valoracion_fechavaloracion() %>
        </td>
        <td>
            <%=List_cdf_valoracion.get(index).getCdf_valoracion_horavaloracion() %>
        </td>
        <td>
            <%=List_cdf_valoracion.get(index).getCdf_usuario_usuario().getCdf_usuario_alias() %>
        </td>
        <td>
            <%=List_cdf_valoracion.get(index).getCdf_candidato_candidato().getCdf_candidato_nombre() %>
        </td>
        <td>
            <%=List_cdf_valoracion.get(index).getCdf_sector_sector().getCdf_sector_nombre() %>
        </td>
        <td class="text-center">   
            <a href="javascript:actualizar('crud_Cdf_valoracion_Save','cdf.view/crud_Cdf_valoracion/crud_Cdf_valoracion_Controller.jsp','<%= List_cdf_valoracion.get(index).getCdf_valoracion_id()
            %>','enviomodificar');" class="btn btn-warning"><i class="glyphicon glyphicon-edit" title="Actualizar"></i></a>
        </td>
        <td class="text-center">
            <a href="javascript:actualizar_eliminar('crud_Cdf_valoracion_Show','cdf.view/crud_Cdf_valoracion/crud_Cdf_valoracion_Controller.jsp','<%=List_cdf_valoracion.get(index).getCdf_valoracion_id()
            %>','eliminar');" class="btn btn-danger"><i class="glyphicon glyphicon-remove" title="Eliminar"></i></a>
        </td>
    </tr>
        <%
            }
        %>
    </tbody>
</table>