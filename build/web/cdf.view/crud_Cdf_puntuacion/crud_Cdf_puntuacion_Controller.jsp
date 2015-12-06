<%@page import="cdf.model.Model_Cdf_puntuacion"%>
<%@page import="cdf.controller.Controller_Cdf_puntuacion"%>
<%

    Controller_Cdf_puntuacion gestion_cdf_puntuacion = new Controller_Cdf_puntuacion();
    // posibilidad de que sea gestionCliente, es decir gestionNombreTabla
    String accion = request.getParameter("accion");
    Model_Cdf_puntuacion model_cdf_puntuacion = new Model_Cdf_puntuacion();

    if (accion.equalsIgnoreCase("enviomodificar")) {
        Integer id = Integer.parseInt(request.getParameter("primarykey"));
        model_cdf_puntuacion.setCdf_puntuacion_id(id);
        model_cdf_puntuacion = (Model_Cdf_puntuacion) gestion_cdf_puntuacion.getListar_cdf_puntuacion(model_cdf_puntuacion).get(0);
%>

<%@include file="crud_Cdf_puntuacion_Save.jsp" %>
<script>
    llenardatosactualizar_cdf_puntuacion('<%=model_cdf_puntuacion.getCdf_puntuacion_id()%>', '<%=model_cdf_puntuacion.getCdf_candidato_candidato()%>', '<%=model_cdf_puntuacion.getCdf_puntuacion_fecha()%>', '<%=model_cdf_puntuacion.getCdf_puntuacion_hora()%>', 'Actualizar');
</script>

<%

} else {
    boolean punto_entrada = false;
    if (accion.equalsIgnoreCase("eliminar")) {
        Integer id = Integer.parseInt(request.getParameter("primarykey"));
        model_cdf_puntuacion.setCdf_puntuacion_id(id);
        gestion_cdf_puntuacion.Eliminar_cdf_puntuacion(model_cdf_puntuacion);
    } else {
        if (accion.equalsIgnoreCase("registrar") || accion.equalsIgnoreCase("actualizar")) {
            Model_Cdf_candidato candidato = new Model_Cdf_candidato(Integer.parseInt(request.getParameter("candidato")));
            String fecha = request.getParameter("fecha");
            String hora = request.getParameter("hora");

            model_cdf_puntuacion.setCdf_candidato_candidato(candidato);
            model_cdf_puntuacion.setCdf_puntuacion_fecha(fecha);
            model_cdf_puntuacion.setCdf_puntuacion_hora(hora);

            if (accion.equalsIgnoreCase("registrar")) {

                gestion_cdf_puntuacion.Insertar_cdf_puntuacion(model_cdf_puntuacion);
            } else {
                //actualizar , verificar tipo de dato
                Integer id = Integer.parseInt(request.getParameter("id"));
                model_cdf_puntuacion.setCdf_puntuacion_id(id);
                gestion_cdf_puntuacion.Actualizar_cdf_puntuacion(model_cdf_puntuacion);
            }
        } else {
            if (accion.equalsIgnoreCase("buscar")) {
                String input_buscar = request.getParameter("input_buscar");
                punto_entrada = true;
                request.getSession().setAttribute("list_cdf_puntuacion", gestion_cdf_puntuacion.Buscar_cdf_puntuacion(input_buscar));
            }
        }

    }
    if (punto_entrada == false) {
        request.getSession().setAttribute("list_cdf_puntuacion", gestion_cdf_puntuacion.getListar_cdf_puntuacion(null));
%>
<script>
    llenardatosactualizar_cdf_puntuacion('', '', '', '', 'Registrar');
</script>
<%
    }
%>

<%@include file="crud_Cdf_puntuacion_Show.jsp"  %>

<%    }
%>