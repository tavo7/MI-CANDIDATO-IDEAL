<%@page import="cdf.model.Model_Cdf_sector"%>
<%@page import="cdf.model.Model_Cdf_candidato"%>
<%@page import="cdf.model.Model_Cdf_propuesta"%>
<%@page import="cdf.controller.Controller_Cdf_propuesta"%>
<%

    Controller_Cdf_propuesta gestion_cdf_propuesta = new Controller_Cdf_propuesta();
    // posibilidad de que sea gestionCliente, es decir gestionNombreTabla
    String accion = request.getParameter("accion");
    Model_Cdf_propuesta model_cdf_propuesta = new Model_Cdf_propuesta();

    if (accion.equalsIgnoreCase("enviomodificar")) {

        Integer candidato = Integer.parseInt(request.getParameter("candidato"));
        model_cdf_propuesta.setCdf_candidato_candidato(new Model_Cdf_candidato(candidato));        
        Integer sector = Integer.parseInt(request.getParameter("sector"));
        model_cdf_propuesta.setCdf_sector_sector(new Model_Cdf_sector(sector));
        model_cdf_propuesta = (Model_Cdf_propuesta) gestion_cdf_propuesta.getListar_cdf_propuesta(model_cdf_propuesta).get(0);
%>

<%@include file="crud_Cdf_propuesta_Save.jsp" %>
<script>
    llenardatosactualizar_cdf_propuesta('<%=model_cdf_propuesta.getCdf_candidato_candidato().getCdf_candidato_id() %>', '<%=model_cdf_propuesta.getCdf_sector_sector().getCdf_sector_id() %>', '<%=model_cdf_propuesta.getCdf_propuesta_descripcion()%>', 'Actualizar');
</script>

<%

} else {
    boolean punto_entrada = false;
    if (accion.equalsIgnoreCase("eliminar")) {
        Integer candidato = Integer.parseInt(request.getParameter("candidato"));
        model_cdf_propuesta.setCdf_candidato_candidato(new Model_Cdf_candidato(candidato));
        gestion_cdf_propuesta.Eliminar_cdf_propuesta(model_cdf_propuesta);
        Integer sector = Integer.parseInt(request.getParameter("sector"));
        model_cdf_propuesta.setCdf_sector_sector(new Model_Cdf_sector(sector));
        gestion_cdf_propuesta.Eliminar_cdf_propuesta(model_cdf_propuesta);
    } else {
        if (accion.equalsIgnoreCase("registrar") || accion.equalsIgnoreCase("actualizar")) {            
            String descripcion = request.getParameter("descripcion");
            model_cdf_propuesta.setCdf_propuesta_descripcion(descripcion);
            Integer candidato = Integer.parseInt(request.getParameter("candidato"));
            model_cdf_propuesta.setCdf_candidato_candidato(new Model_Cdf_candidato(candidato));
            gestion_cdf_propuesta.Actualizar_cdf_propuesta(model_cdf_propuesta);
            Integer sector = Integer.parseInt(request.getParameter("sector"));
            model_cdf_propuesta.setCdf_sector_sector(new Model_Cdf_sector(sector));
            
            if (accion.equalsIgnoreCase("registrar")) {
                gestion_cdf_propuesta.Insertar_cdf_propuesta(model_cdf_propuesta);
            } else {
                gestion_cdf_propuesta.Actualizar_cdf_propuesta(model_cdf_propuesta);
            }
        } else {
            if (accion.equalsIgnoreCase("buscar")) {
                String input_buscar = request.getParameter("input_buscar");
                punto_entrada = true;
                request.getSession().setAttribute("list_cdf_propuesta", gestion_cdf_propuesta.Buscar_cdf_propuesta(input_buscar));
            }
        }
    }
    if (punto_entrada == false) {
        request.getSession().setAttribute("list_cdf_propuesta", gestion_cdf_propuesta.getListar_cdf_propuesta(null));
%>
<script>
    llenardatosactualizar_cdf_propuesta('', '', '', 'Registrar');
</script>
<%
    }

%>

<%@include file="crud_Cdf_propuesta_Show.jsp"  %>

<%    }
%>