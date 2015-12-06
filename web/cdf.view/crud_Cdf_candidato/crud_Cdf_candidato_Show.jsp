<!--

 PageWeb Creado por Framework CESDEVELOPER (cdf) desarrollado en Java
 Author: Ing°. Alexander Manuel Céspedes Leonardo (Manuel Cés)
 Facebook: https://www.facebook.com/leonel.cespedesleonardo
 Telefono: 203957
 Bitel: 935589233
 Email: a_ces10@hotmail.com

-->

<%@page import="java.util.List"%>
<%@page import="cdf.model.Model_Cdf_candidato"%>
<%@page import="cdf.controller.Controller_Cdf_candidato"%>
<%

    List<Model_Cdf_candidato> List_cdf_candidato =(List<Model_Cdf_candidato>)request.getSession().getAttribute("list_cdf_candidato");
%>

<table class="table table-responsive table-hover table-bordered" id="Jtabla_cdf_candidato">
    <thead>
    <tr>
        <th class="text-center">
            Id
        </th>
        <th class="text-center">
            Nombre
        </th>
        <th class="text-center">
            Partidopolitico
        </th>
        <th class="text-center">
            Estado
        </th>
        <th colspan="2" class="text-center">
            <button type="button" data-toggle="modal" data-target=".modaldialog" data-whatever="@getbootstrap" class="btn btn-primary">
                    <i class="glyphicon glyphicon-plus-sign" title="Agregar"></i></button>
        </th>
    </tr>
    </thead>
    <tbody>
        <%
            for (int index = 0; index < List_cdf_candidato.size(); index++) {
        %>
    <tr class="gradeC">
        <td>
            <%=List_cdf_candidato.get(index).getCdf_candidato_id() %>
        </td>
        <td>
            <%=List_cdf_candidato.get(index).getCdf_candidato_nombre() %>
        </td>
        <td>
            <%=List_cdf_candidato.get(index).getCdf_candidato_partidopolitico() %>
        </td>
        <td>
            <%=List_cdf_candidato.get(index).getCdf_candidato_estado() %>
        </td>
        <td class="text-center">   
            <a href="javascript:actualizar('crud_Cdf_candidato_Save','cdf.view/crud_Cdf_candidato/crud_Cdf_candidato_Controller.jsp','<%= List_cdf_candidato.get(index).getCdf_candidato_id()
            %>','enviomodificar');" class="btn btn-warning"><i class="glyphicon glyphicon-edit" title="Actualizar"></i></a>
        </td>
        <td class="text-center">
            <a href="javascript:actualizar_eliminar('crud_Cdf_candidato_Show','cdf.view/crud_Cdf_candidato/crud_Cdf_candidato_Controller.jsp','<%=List_cdf_candidato.get(index).getCdf_candidato_id()
            %>','eliminar');" class="btn btn-danger"><i class="glyphicon glyphicon-remove-sign" title="Eliminar"></i></a>
        </td>
    </tr>
        <%
            }

        %>
    </tbody>
</table>