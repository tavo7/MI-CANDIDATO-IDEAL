<!--

 PageWeb Creado por Framework CESDEVELOPER (cdf) desarrollado en Java
 Author: Ing°. Alexander Manuel Céspedes Leonardo (Manuel Cés)
 Facebook: https://www.facebook.com/leonel.cespedesleonardo
 Telefono: 203957
 Bitel: 935589233
 Email: a_ces10@hotmail.com

-->

<%@page import="java.util.List"%>
<%@page import="cdf.model.Model_Cdf_propuesta"%>
<%@page import="cdf.controller.Controller_Cdf_propuesta"%>
<%

    List<Model_Cdf_propuesta> List_cdf_propuesta =(List<Model_Cdf_propuesta>)request.getSession().getAttribute("list_cdf_propuesta");
%>

<table class="table table-responsive table-hover table-bordered" id="Jtabla_cdf_propuesta">
    <thead>
    <tr>
        <th class="text-center">
            N�
        </th>
        <th class="text-center">
            Candidato
        </th>
        <th class="text-center">
            Sector
        </th>
        <th class="text-center">
            Descripcion
        </th>
        <th colspan="2" class="text-center">
            <button type="button" data-toggle="modal" data-target=".modaldialog" data-whatever="@getbootstrap" class="btn btn-primary">
                    <i class="glyphicon glyphicon-plus" title="Agregar"></i></button>
        </th>
    </tr>
    </thead>
    <tbody>
        <%
            for (int index = 0; index < List_cdf_propuesta.size(); index++) {
        %>
    <tr class="gradeC">
        <td>
            <%=index+1%>
        </td>
        <td>
            <%=List_cdf_propuesta.get(index).getCdf_candidato_candidato().getCdf_candidato_nombre() %>
        </td>
        <td>
            <%=List_cdf_propuesta.get(index).getCdf_sector_sector().getCdf_sector_nombre() %>
        </td>
        <td>
            <%=List_cdf_propuesta.get(index).getCdf_propuesta_descripcion() %>
        </td>
        <td class="text-center">   
            <a href="javascript:actualizar_propuesta('crud_Cdf_propuesta_Save','cdf.view/crud_Cdf_propuesta/crud_Cdf_propuesta_Controller.jsp','<%=List_cdf_propuesta.get(index).getCdf_candidato_candidato().getCdf_candidato_id()
            %>$$<%=List_cdf_propuesta.get(index).getCdf_sector_sector().getCdf_sector_id()
            %>','enviomodificar');" class="btn btn-warning"><i class="glyphicon glyphicon-edit" title="Actualizar"></i></a>
        </td>
        <td class="text-center">
            <a href="javascript:actualizar_eliminar_propuesta('crud_Cdf_propuesta_Show','cdf.view/crud_Cdf_propuesta/crud_Cdf_propuesta_Controller.jsp','<%=List_cdf_propuesta.get(index).getCdf_candidato_candidato().getCdf_candidato_id()
            %>$$<%=List_cdf_propuesta.get(index).getCdf_sector_sector().getCdf_sector_id()
            %>','eliminar');" class="btn btn-danger"><i class="glyphicon glyphicon-remove" title="Eliminar"></i></a>
        </td>
    </tr>
        <%
            }

        %>
    </tbody>
</table>