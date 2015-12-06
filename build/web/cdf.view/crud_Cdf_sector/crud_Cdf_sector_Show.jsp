<!--

 PageWeb Creado por Framework CESDEVELOPER (cdf) desarrollado en Java
 Author: Ing°. Alexander Manuel Céspedes Leonardo (Manuel Cés)
 Facebook: https://www.facebook.com/leonel.cespedesleonardo
 Telefono: 203957
 Bitel: 935589233
 Email: a_ces10@hotmail.com

-->

<%@page import="java.util.List"%>
<%@page import="cdf.model.Model_Cdf_sector"%>
<%@page import="cdf.controller.Controller_Cdf_sector"%>
<%

    List<Model_Cdf_sector> List_cdf_sector =(List<Model_Cdf_sector>)request.getSession().getAttribute("list_cdf_sector");
%>

<table class="table table-responsive table-hover table-bordered" id="Jtabla_cdf_sector">
    <thead>
    <tr>
        <th class="text-center">
            Id
        </th>
        <th class="text-center">
            Codigo
        </th>
        <th class="text-center">
            Nombre
        </th>
        <th class="text-center">
            Estado
        </th>
        <th colspan="2" class="text-center">
            <button type="button" data-toggle="modal" data-target=".modaldialog" data-whatever="@getbootstrap" class="btn btn-primary">
                    <i class="glyphicon glyphicon-plus" title="Agregar"></i></button>
        </th>
    </tr>
    </thead>
    <tbody>
        <%
            for (int index = 0; index < List_cdf_sector.size(); index++) {
        %>
    <tr class="gradeC">
        <td>
            <%=List_cdf_sector.get(index).getCdf_sector_id() %>
        </td>
        <td>
            <%=List_cdf_sector.get(index).getCdf_sector_codigo() %>
        </td>
        <td>
            <%=List_cdf_sector.get(index).getCdf_sector_nombre() %>
        </td>
        <td>
            <%=List_cdf_sector.get(index).getCdf_sector_estado() %>
        </td>
        <td class="text-center">   
            <a href="javascript:actualizar('crud_Cdf_sector_Save','cdf.view/crud_Cdf_sector/crud_Cdf_sector_Controller.jsp','<%= List_cdf_sector.get(index).getCdf_sector_id()
            %>','enviomodificar');" class="btn btn-warning"><i class="glyphicon glyphicon-edit" title="Actualizar"></i></a>
        </td>
        <td class="text-center">
            <a href="javascript:actualizar_eliminar('crud_Cdf_sector_Show','cdf.view/crud_Cdf_sector/crud_Cdf_sector_Controller.jsp','<%=List_cdf_sector.get(index).getCdf_sector_id()
            %>','eliminar');" class="btn btn-danger"><i class="glyphicon glyphicon-remove" title="Eliminar"></i></a>
        </td>
    </tr>
        <%
            }

        %>
    </tbody>
</table>