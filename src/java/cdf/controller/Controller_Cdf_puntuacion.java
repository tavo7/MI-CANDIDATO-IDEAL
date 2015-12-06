/*
 Controller Creado por Framework CESDEVELOPER desarrollado en Java
Author: Ing°. Alexander Manuel Céspedes Leonardo
Telefono: 203957
Bitel: 935589233
Email: a_ces10@hotmail.com
**/
package cdf.controller;

import cdf.connection.Cado;
import cdf.model.Model_Cdf_candidato;
import cdf.model.Model_Cdf_puntuacion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Controller_Cdf_puntuacion {

    private String sql;

    public List<Model_Cdf_puntuacion> getListar_cdf_puntuacion(Model_Cdf_puntuacion cdf_puntuacion) {
        ResultSet resultados = null;
        try {
            sql ="SELECT cdf_puntuacion_id,cdf_candidato_candidato,cdf_puntuacion_fecha,cdf_puntuacion_hora FROM cdf_puntuacion WHERE 1=1";

          if (cdf_puntuacion != null) {
            if (cdf_puntuacion.getCdf_puntuacion_id() != null) {
              sql += " and cdf_puntuacion_id='"+cdf_puntuacion.getCdf_puntuacion_id()+"'";
            }

            if (cdf_puntuacion.getCdf_candidato_candidato() != null) {
              sql += " and cdf_candidato_candidato='"+cdf_puntuacion.getCdf_candidato_candidato().getCdf_candidato_id()+"'";
            }

            if (cdf_puntuacion.getCdf_puntuacion_fecha() != null) {
              sql += " and cdf_puntuacion_fecha='"+cdf_puntuacion.getCdf_puntuacion_fecha()+"'";
            }

            if (cdf_puntuacion.getCdf_puntuacion_hora() != null) {
              sql += " and cdf_puntuacion_hora='"+cdf_puntuacion.getCdf_puntuacion_hora()+"'";
            }

          if (cdf_puntuacion.getCdf_puntuacion_consulta() != null) {
                    sql +=cdf_puntuacion.getCdf_puntuacion_consulta();
                }

            }
            resultados = Cado.obtenerResultados(sql);
            List<Model_Cdf_puntuacion> list_cdf_puntuacion = new ArrayList<>();
            Model_Cdf_puntuacion model_cdf_puntuacion = null;
            while (resultados.next()) {
                model_cdf_puntuacion = new Model_Cdf_puntuacion();
                model_cdf_puntuacion.setCdf_puntuacion_id(resultados.getInt(1));
                Model_Cdf_candidato model_cdf_candidato= new Controller_Cdf_candidato().getListar_cdf_candidato(new Model_Cdf_candidato(resultados.getInt(2))).get(0);
                model_cdf_puntuacion.setCdf_candidato_candidato(model_cdf_candidato);
                model_cdf_puntuacion.setCdf_puntuacion_fecha(resultados.getString(3));
                model_cdf_puntuacion.setCdf_puntuacion_hora(resultados.getString(4));
                list_cdf_puntuacion.add(model_cdf_puntuacion);
            }
            return list_cdf_puntuacion;

        } catch (SQLException e) {
        }
        return null;
    }


 public void Insertar_cdf_puntuacion(Model_Cdf_puntuacion cdf_puntuacion) {
        try {
      
                sql = "INSERT INTO cdf_puntuacion\n"
                        + "(\n"
                        + "cdf_candidato_candidato,\n"
                        + "cdf_puntuacion_fecha,\n"
                        + "cdf_puntuacion_hora) VALUES(\n"
                        + "'"+cdf_puntuacion.getCdf_candidato_candidato()+"',\n"
                        + "'"+cdf_puntuacion.getCdf_puntuacion_fecha()+"',\n"
                        + "'"+cdf_puntuacion.getCdf_puntuacion_hora()+"');\n";

            
            Boolean ejecutarSentencia = Cado.ejecutarSentencia(sql);
        } catch (Exception e) {
        }
    }

 public void Actualizar_cdf_puntuacion(Model_Cdf_puntuacion cdf_puntuacion) {
        try {
       
                sql = "UPDATE cdf_puntuacion\n"
                        + "SET\n"                       
                        + "cdf_candidato_candidato = '"+cdf_puntuacion.getCdf_candidato_candidato()+"',\n"
                        + "cdf_puntuacion_fecha = '"+cdf_puntuacion.getCdf_puntuacion_fecha()+"',\n"
                        + "cdf_puntuacion_hora = '"+cdf_puntuacion.getCdf_puntuacion_hora()+"'\n"
                        + "WHERE cdf_puntuacion_id = '"+cdf_puntuacion.getCdf_puntuacion_id()+"'\n";

            Boolean ejecutarSentencia = Cado.ejecutarSentencia(sql);
        } catch (Exception e) {
        }
    }

  public void Eliminar_cdf_puntuacion(Model_Cdf_puntuacion cdf_puntuacion) {
        try {
            
                sql = "DELETE FROM cdf_puntuacion WHERE cdf_puntuacion_id = '"+cdf_puntuacion.getCdf_puntuacion_id()+"'\n";            

            Boolean ejecutarSentencia = Cado.ejecutarSentencia(sql);
        } catch (Exception e) {
        }
    }

  public List<Model_Cdf_puntuacion> Buscar_cdf_puntuacion(String cdf_patron) {       
            sql = " AND cdf_puntuacion_id LIKE '%"+cdf_patron+"%' OR cdf_candidato_candidato LIKE '%"+cdf_patron+"%' OR cdf_puntuacion_fecha LIKE '%"+cdf_patron+"%' OR cdf_puntuacion_hora LIKE '%"+cdf_patron+"%'";
             Model_Cdf_puntuacion model_cdf_puntuacion= new Model_Cdf_puntuacion();
             model_cdf_puntuacion.setCdf_puntuacion_consulta(sql);
            return getListar_cdf_puntuacion(model_cdf_puntuacion);               
    }

  }