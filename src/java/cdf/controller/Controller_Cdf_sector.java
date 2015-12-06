/*
 Controller Creado por Framework CESDEVELOPER desarrollado en Java
Author: Ing°. Alexander Manuel Céspedes Leonardo
Telefono: 203957
Bitel: 935589233
Email: a_ces10@hotmail.com
**/
package cdf.controller;

import cdf.connection.Cado;
import cdf.model.Model_Cdf_sector;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Controller_Cdf_sector {

    private String sql;

    public List<Model_Cdf_sector> getListar_cdf_sector(Model_Cdf_sector cdf_sector) {
        ResultSet resultados = null;
        try {
            sql ="SELECT cdf_sector_id,cdf_sector_codigo,cdf_sector_nombre,cdf_sector_estado FROM cdf_sector WHERE 1=1";

          if (cdf_sector != null) {
            if (cdf_sector.getCdf_sector_id() != null) {
              sql += " and cdf_sector_id='"+cdf_sector.getCdf_sector_id()+"'";
            }

            if (cdf_sector.getCdf_sector_codigo() != null) {
              sql += " and cdf_sector_codigo='"+cdf_sector.getCdf_sector_codigo()+"'";
            }

            if (cdf_sector.getCdf_sector_nombre() != null) {
              sql += " and cdf_sector_nombre='"+cdf_sector.getCdf_sector_nombre()+"'";
            }

            if (cdf_sector.getCdf_sector_estado() != null) {
              sql += " and cdf_sector_estado='"+cdf_sector.getCdf_sector_estado()+"'";
            }

          if (cdf_sector.getCdf_sector_consulta() != null) {
                    sql +=cdf_sector.getCdf_sector_consulta();
                }

            }
            resultados = Cado.obtenerResultados(sql);
            List<Model_Cdf_sector> list_cdf_sector = new ArrayList<>();
            Model_Cdf_sector model_cdf_sector = null;
            while (resultados.next()) {
                model_cdf_sector = new Model_Cdf_sector();
                model_cdf_sector.setCdf_sector_id(resultados.getInt(1));
                model_cdf_sector.setCdf_sector_codigo(resultados.getString(2));
                model_cdf_sector.setCdf_sector_nombre(resultados.getString(3));
                model_cdf_sector.setCdf_sector_estado(resultados.getString(4));
                list_cdf_sector.add(model_cdf_sector);
            }
            return list_cdf_sector;

        } catch (SQLException e) {
        }
        return null;
    }


 public void Insertar_cdf_sector(Model_Cdf_sector cdf_sector) {
        try {
      
                sql = "INSERT INTO cdf_sector\n"
                        + "(\n"
                        + "cdf_sector_codigo,\n"
                        + "cdf_sector_nombre,\n"
                        + "cdf_sector_estado) VALUES(\n"
                        + "'"+cdf_sector.getCdf_sector_codigo()+"',\n"
                        + "'"+cdf_sector.getCdf_sector_nombre()+"',\n"
                        + "'"+cdf_sector.getCdf_sector_estado()+"');\n";

            
            Boolean ejecutarSentencia = Cado.ejecutarSentencia(sql);
        } catch (Exception e) {
        }
    }

 public void Actualizar_cdf_sector(Model_Cdf_sector cdf_sector) {
        try {
       
                sql = "UPDATE cdf_sector\n"
                        + "SET\n"                       
                        + "cdf_sector_codigo = '"+cdf_sector.getCdf_sector_codigo()+"',\n"
                        + "cdf_sector_nombre = '"+cdf_sector.getCdf_sector_nombre()+"',\n"
                        + "cdf_sector_estado = '"+cdf_sector.getCdf_sector_estado()+"'\n"
                        + "WHERE cdf_sector_id = '"+cdf_sector.getCdf_sector_id()+"'\n";

            Boolean ejecutarSentencia = Cado.ejecutarSentencia(sql);
        } catch (Exception e) {
        }
    }

  public void Eliminar_cdf_sector(Model_Cdf_sector cdf_sector) {
        try {            
                sql = "DELETE FROM cdf_sector WHERE cdf_sector_id = '"+cdf_sector.getCdf_sector_id()+"'\n";            
            Boolean ejecutarSentencia = Cado.ejecutarSentencia(sql);
        } catch (Exception e) {
        }
    }

  public List<Model_Cdf_sector> Buscar_cdf_sector(String cdf_patron) {sql = " AND cdf_sector_id LIKE '%"+cdf_patron+"%' OR cdf_sector_codigo LIKE '%"+cdf_patron+"%' OR cdf_sector_nombre LIKE '%"+cdf_patron+"%' OR cdf_sector_estado LIKE '%"+cdf_patron+"%'";Model_Cdf_sector model_cdf_sector= new Model_Cdf_sector();model_cdf_sector.setCdf_sector_consulta(sql);return getListar_cdf_sector(model_cdf_sector);}

  }