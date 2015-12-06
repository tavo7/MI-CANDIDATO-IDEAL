/*
 Controller Creado por Framework CESDEVELOPER desarrollado en Java
Author: Ing°. Alexander Manuel Céspedes Leonardo
Telefono: 203957
Bitel: 935589233
Email: a_ces10@hotmail.com
**/
package cdf.controller;

import cdf.connection.Cado;
import cdf.model.Model_Cdf_usuario;
import cdf.model.Model_Cdf_candidato;
import cdf.model.Model_Cdf_sector;
import cdf.model.Model_Cdf_valoracion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Controller_Cdf_valoracion {

    private String sql;

    public List<Model_Cdf_valoracion> getListar_cdf_valoracion(Model_Cdf_valoracion cdf_valoracion) {
        ResultSet resultados = null;
        try {
            sql ="SELECT cdf_valoracion_id,cdf_valoracion_valor,cdf_valoracion_fechavaloracion,cdf_valoracion_horavaloracion,cdf_usuario_usuario,cdf_candidato_candidato,cdf_sector_sector FROM cdf_valoracion WHERE 1=1";

          if (cdf_valoracion != null) {
            if (cdf_valoracion.getCdf_valoracion_id() != null) {
              sql += " and cdf_valoracion_id='"+cdf_valoracion.getCdf_valoracion_id()+"'";
            }

            if (cdf_valoracion.getCdf_valoracion_valor() != null) {
              sql += " and cdf_valoracion_valor='"+cdf_valoracion.getCdf_valoracion_valor()+"'";
            }

            if (cdf_valoracion.getCdf_valoracion_fechavaloracion() != null) {
              sql += " and cdf_valoracion_fechavaloracion='"+cdf_valoracion.getCdf_valoracion_fechavaloracion()+"'";
            }

            if (cdf_valoracion.getCdf_valoracion_horavaloracion() != null) {
              sql += " and cdf_valoracion_horavaloracion='"+cdf_valoracion.getCdf_valoracion_horavaloracion()+"'";
            }

            if (cdf_valoracion.getCdf_usuario_usuario() != null) {
              sql += " and cdf_usuario_usuario='"+cdf_valoracion.getCdf_usuario_usuario().getCdf_usuario_id()+"'";
            }

            if (cdf_valoracion.getCdf_candidato_candidato() != null) {
              sql += " and cdf_candidato_candidato='"+cdf_valoracion.getCdf_candidato_candidato().getCdf_candidato_id()+"'";
            }

            if (cdf_valoracion.getCdf_sector_sector() != null) {
              sql += " and cdf_sector_sector='"+cdf_valoracion.getCdf_sector_sector().getCdf_sector_id()+"'";
            }

          if (cdf_valoracion.getCdf_valoracion_consulta() != null) {
                    sql +=cdf_valoracion.getCdf_valoracion_consulta();
                }

            }
            resultados = Cado.obtenerResultados(sql);
            List<Model_Cdf_valoracion> list_cdf_valoracion = new ArrayList<>();
            Model_Cdf_valoracion model_cdf_valoracion = null;
            while (resultados.next()) {
                model_cdf_valoracion = new Model_Cdf_valoracion();
                model_cdf_valoracion.setCdf_valoracion_id(resultados.getInt(1));
                model_cdf_valoracion.setCdf_valoracion_valor(resultados.getString(2));
                model_cdf_valoracion.setCdf_valoracion_fechavaloracion(resultados.getString(3));
                model_cdf_valoracion.setCdf_valoracion_horavaloracion(resultados.getString(4));
                Model_Cdf_usuario model_cdf_usuario= new Controller_Cdf_usuario().getListar_cdf_usuario(new Model_Cdf_usuario(resultados.getInt(5))).get(0);
                model_cdf_valoracion.setCdf_usuario_usuario(model_cdf_usuario);
                Model_Cdf_candidato model_cdf_candidato= new Controller_Cdf_candidato().getListar_cdf_candidato(new Model_Cdf_candidato(resultados.getInt(6))).get(0);
                model_cdf_valoracion.setCdf_candidato_candidato(model_cdf_candidato);
                Model_Cdf_sector model_cdf_sector=new Controller_Cdf_sector().getListar_cdf_sector(new Model_Cdf_sector(resultados.getInt(7))).get(0);
                model_cdf_valoracion.setCdf_sector_sector(model_cdf_sector);
                list_cdf_valoracion.add(model_cdf_valoracion);
            }
            return list_cdf_valoracion;

        } catch (SQLException e) {
        }
        return null;
    }


 public void Insertar_cdf_valoracion(Model_Cdf_valoracion cdf_valoracion) {
        try {     
                sql = "INSERT INTO cdf_valoracion\n"
                        + "(\n"
                        + "cdf_valoracion_valor,\n"
                        + "cdf_valoracion_fechavaloracion,\n"
                        + "cdf_valoracion_horavaloracion,\n"
                        + "cdf_usuario_usuario,\n"
                        + "cdf_candidato_candidato,\n"
                        + "cdf_sector_sector) VALUES(\n"
                        + "'"+cdf_valoracion.getCdf_valoracion_valor()+"',\n"
                        + "'"+cdf_valoracion.getCdf_valoracion_fechavaloracion()+"',\n"
                        + "'"+cdf_valoracion.getCdf_valoracion_horavaloracion()+"',\n"
                        + "'"+cdf_valoracion.getCdf_usuario_usuario().getCdf_usuario_id()+"',\n"
                        + "'"+cdf_valoracion.getCdf_candidato_candidato().getCdf_candidato_id()+"',\n"
                        + "'"+cdf_valoracion.getCdf_sector_sector().getCdf_sector_id()+"');\n";

            
            Boolean ejecutarSentencia = Cado.ejecutarSentencia(sql);
        } catch (Exception e) {
        }
    }

 public void Actualizar_cdf_valoracion(Model_Cdf_valoracion cdf_valoracion) {
        try {
       
                sql = "UPDATE cdf_valoracion\n"
                        + "SET\n"                       
                        + "cdf_valoracion_valor = '"+cdf_valoracion.getCdf_valoracion_valor()+"',\n"
                        + "cdf_valoracion_fechavaloracion = '"+cdf_valoracion.getCdf_valoracion_fechavaloracion()+"',\n"
                        + "cdf_valoracion_horavaloracion = '"+cdf_valoracion.getCdf_valoracion_horavaloracion()+"',\n"
                        + "cdf_usuario_usuario = '"+cdf_valoracion.getCdf_usuario_usuario().getCdf_usuario_id()+"',\n"
                        + "cdf_candidato_candidato = '"+cdf_valoracion.getCdf_candidato_candidato().getCdf_candidato_id()+"',\n"
                        + "cdf_sector_sector = '"+cdf_valoracion.getCdf_sector_sector().getCdf_sector_id()+"'\n"
                        + "WHERE cdf_valoracion_id = '"+cdf_valoracion.getCdf_valoracion_id()+"'\n";

            Boolean ejecutarSentencia = Cado.ejecutarSentencia(sql);
        } catch (Exception e) {
        }
    }

  public void Eliminar_cdf_valoracion(Model_Cdf_valoracion cdf_valoracion) {
        try {
            
                sql = "DELETE FROM cdf_valoracion WHERE cdf_valoracion_id = '"+cdf_valoracion.getCdf_valoracion_id()+"'\n";            

            Boolean ejecutarSentencia = Cado.ejecutarSentencia(sql);
        } catch (Exception e) {
        }
    }

public List<Model_Cdf_valoracion> Buscar_cdf_valoracion(String cdf_patron) {sql = " AND cdf_valoracion_id LIKE '%"+cdf_patron+"%' OR cdf_valoracion_valor LIKE '%"+cdf_patron+"%' OR cdf_valoracion_fechavaloracion LIKE '%"+cdf_patron+"%' OR cdf_valoracion_horavaloracion LIKE '%"+cdf_patron+"%' OR cdf_usuario_usuario LIKE '%"+cdf_patron+"%' OR cdf_candidato_candidato LIKE '%"+cdf_patron+"%' OR cdf_sector_sector LIKE '%"+cdf_patron+"%'";Model_Cdf_valoracion model_cdf_valoracion= new Model_Cdf_valoracion();model_cdf_valoracion.setCdf_valoracion_consulta(sql);return getListar_cdf_valoracion(model_cdf_valoracion);}
  }