<%@page import="cdf.model.Model_Cdf_valoracion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cdf.model.Model_Cdf_Estadistica"%>
<%@page import="java.util.List"%>
<%@page import="cdf.model.Model_Cdf_candidato"%>
<%@page import="cdf.controller.Controller_Cdf_candidato"%>
<%@page import="cdf.model.Model_Cdf_propuesta"%>
<%@page import="cdf.controller.Controller_Cdf_propuesta"%>
<%@page import="cdf.controller.Controller_Cdf_valoracion"%>
<%

    Controller_Cdf_valoracion gestionvaloracion = new Controller_Cdf_valoracion();
    Controller_Cdf_propuesta gestionpropuesta = new Controller_Cdf_propuesta();
    Controller_Cdf_candidato gestioncandidato = new Controller_Cdf_candidato();

    List<Model_Cdf_candidato> lis_candidatos = gestioncandidato.getListar_cdf_candidato(null);

    List<Model_Cdf_Estadistica> list_valores_candidatos = new ArrayList<Model_Cdf_Estadistica>();
    Integer acumular = 0;
    for (int index = 0; index < lis_candidatos.size(); index++) {
        acumular = 0;
        List<Model_Cdf_valoracion> list_valoracion = gestionvaloracion.getListar_cdf_valoracion(new Model_Cdf_valoracion(lis_candidatos.get(index)));
        for (int index1 = 0; index1 < list_valoracion.size(); index1++) {
            acumular += Integer.parseInt(list_valoracion.get(index1).getCdf_valoracion_valor());
        }
        list_valores_candidatos.add(new Model_Cdf_Estadistica(lis_candidatos.get(index), acumular));

    }

    request.getSession().setAttribute("lista_candidatos_valores", list_valores_candidatos);
    Integer mayor = -1;
    for (int index = 0; index < list_valores_candidatos.size(); index++) {
        if (list_valores_candidatos.get(index).getAlmacenar() > mayor) {
            mayor = list_valores_candidatos.get(index).getAlmacenar();
        }
    }
    List<Model_Cdf_Estadistica> micandidatoideal = new ArrayList<Model_Cdf_Estadistica>();
    Model_Cdf_Estadistica estadistica = new Model_Cdf_Estadistica();
    for (int index = 0; index < list_valores_candidatos.size(); index++) {
        if (list_valores_candidatos.get(index).getAlmacenar() == mayor) {
            estadistica.setCandidato(list_valores_candidatos.get(index).getCandidato());
            break;
        }
    }
    estadistica.setAlmacenar(mayor);
    micandidatoideal.add(estadistica);

    request.getSession().setAttribute("micandidatoideal", micandidatoideal.get(0));

    response.sendRedirect("View_Cdf_micandidatoideal.jsp");

%>