<!--

 PageWeb Creado por Framework CESDEVELOPER (cdf) desarrollado en Java
 Author: Ing°. Alexander Manuel Céspedes Leonardo (Manuel Cés)
 Facebook: https://www.facebook.com/leonel.cespedesleonardo
 Telefono: 203957
 Bitel: 935589233
 Email: a_ces10@hotmail.com

-->

<%@page import="java.util.List"%>
<%@page import="cdf.model.Model_Cdf_usuario"%>
<%@page import="cdf.controller.Controller_Cdf_usuario"%>
<%

    List<Model_Cdf_usuario> List_cdf_usuario =(List<Model_Cdf_usuario>)request.getSession().getAttribute("list_cdf_usuario");
%>

<table class="table table-responsive table-hover table-bordered" id="Jtabla_cdf_usuario">
    <thead>
    <tr>
        <th class="text-center">
            Id
        </th>
        <th class="text-center">
            Alias
        </th>
        <th class="text-center">
            Ciudad
        </th>
        <th class="text-center">
            Edad
        </th>
        <th colspan="2" class="text-center">
            <button type="button" data-toggle="modal" data-target=".modaldialog" data-whatever="@getbootstrap" class="btn btn-primary">
                    <i class="glyphicon glyphicon-plus" title="Agregar"></i></button>
        </th>
    </tr>
    </thead>
    <tbody>
        <%
            for (int index = 0; index < List_cdf_usuario.size(); index++) {
        %>
    <tr class="gradeC">
        <td>
            <%=List_cdf_usuario.get(index).getCdf_usuario_id() %>
        </td>
        <td>
            <%=List_cdf_usuario.get(index).getCdf_usuario_alias() %>
        </td>
        <td>
            <%=List_cdf_usuario.get(index).getCdf_usuario_ciudad() %>
        </td>
        <td>
            <%=List_cdf_usuario.get(index).getCdf_usuario_edad() %>
        </td>
        <td class="text-center">   
            <a href="javascript:actualizar('crud_Cdf_usuario_Save','cdf.view/crud_Cdf_usuario/crud_Cdf_usuario_Controller.jsp','<%= List_cdf_usuario.get(index).getCdf_usuario_id()
            %>','enviomodificar');" class="btn btn-warning"><i class="glyphicon glyphicon-edit" title="Actualizar"></i></a>
        </td>
        <td class="text-center">
            <a href="javascript:actualizar_eliminar('crud_Cdf_usuario_Show','cdf.view/crud_Cdf_usuario/crud_Cdf_usuario_Controller.jsp','<%=List_cdf_usuario.get(index).getCdf_usuario_id()
            %>','eliminar');" class="btn btn-danger"><i class="glyphicon glyphicon-remove" title="Eliminar"></i></a>
        </td>
    </tr>
        <%
            }

        %>
    </tbody>
</table>