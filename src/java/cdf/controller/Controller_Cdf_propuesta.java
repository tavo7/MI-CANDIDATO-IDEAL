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
import cdf.model.Model_Cdf_propuesta;
import cdf.model.Model_Cdf_sector;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Controller_Cdf_propuesta {

    private String sql;

    public List<Model_Cdf_propuesta> getListar_cdf_propuesta(Model_Cdf_propuesta cdf_propuesta) {
        ResultSet resultados = null;
        try {
            sql ="SELECT cdf_candidato_candidato,cdf_sector_sector,cdf_propuesta_descripcion FROM cdf_propuesta WHERE 1=1";

          if (cdf_propuesta != null) {
            if (cdf_propuesta.getCdf_candidato_candidato() != null) {
              sql += " and cdf_candidato_candidato='"+cdf_propuesta.getCdf_candidato_candidato().getCdf_candidato_id()+"'";
            }

            if (cdf_propuesta.getCdf_sector_sector() != null) {
              sql += " and cdf_sector_sector='"+cdf_propuesta.getCdf_sector_sector().getCdf_sector_id()+"'";
            }

            if (cdf_propuesta.getCdf_propuesta_descripcion() != null) {
              sql += " and cdf_propuesta_descripcion='"+cdf_propuesta.getCdf_propuesta_descripcion()+"'";
            }

          if (cdf_propuesta.getCdf_propuesta_consulta() != null) {
                    sql +=cdf_propuesta.getCdf_propuesta_consulta();
                }

            }
            resultados = Cado.obtenerResultados(sql);
            List<Model_Cdf_propuesta> list_cdf_propuesta = new ArrayList<>();
            Model_Cdf_propuesta model_cdf_propuesta = null;
            while (resultados.next()) {
                model_cdf_propuesta = new Model_Cdf_propuesta();       
                Model_Cdf_candidato model_cdf_candidato= new Controller_Cdf_candidato().getListar_cdf_candidato(new Model_Cdf_candidato(resultados.getInt(1))).get(0);
                model_cdf_propuesta.setCdf_candidato_candidato(model_cdf_candidato);
                Model_Cdf_sector model_cdf_sector=new Controller_Cdf_sector().getListar_cdf_sector(new Model_Cdf_sector(resultados.getInt(2))).get(0);
                model_cdf_propuesta.setCdf_sector_sector(model_cdf_sector);
                model_cdf_propuesta.setCdf_propuesta_descripcion(resultados.getString(3));
                list_cdf_propuesta.add(model_cdf_propuesta);
            }
            return list_cdf_propuesta;

        } catch (SQLException e) {
        }
        return null;
    }


 public void Insertar_cdf_propuesta(Model_Cdf_propuesta cdf_propuesta) {
        try {
      
                sql = "INSERT INTO cdf_propuesta\n"
                        + "(\n"
                        + "cdf_candidato_candidato,cdf_sector_sector,cdf_propuesta_descripcion) VALUES(\n"
                        + "'"+cdf_propuesta.getCdf_candidato_candidato().getCdf_candidato_id()+"',"
                        + "'"+cdf_propuesta.getCdf_sector_sector().getCdf_sector_id()+"',"
                        + "'"+cdf_propuesta.getCdf_propuesta_descripcion()+"');\n";

            
            Boolean ejecutarSentencia = Cado.ejecutarSentencia(sql);
        } catch (Exception e) {
        }
    }

 public void Actualizar_cdf_propuesta(Model_Cdf_propuesta cdf_propuesta) {
        try {
       
                sql = "UPDATE cdf_propuesta\n"
                        + "SET\n"                       
                        + "cdf_propuesta_descripcion = '"+cdf_propuesta.getCdf_propuesta_descripcion()+"'\n"
                        + "WHERE cdf_candidato_candidato = '"+cdf_propuesta.getCdf_candidato_candidato().getCdf_candidato_id()+"'\n"
                        + "AND cdf_sector_sector = '"+cdf_propuesta.getCdf_sector_sector().getCdf_sector_id()+"'\n";

            Boolean ejecutarSentencia = Cado.ejecutarSentencia(sql);
        } catch (Exception e) {
        }
    }

  public void Eliminar_cdf_propuesta(Model_Cdf_propuesta cdf_propuesta) {
        try {
            
                sql = "DELETE FROM cdf_propuesta WHERE cdf_candidato_candidato = '"+cdf_propuesta.getCdf_candidato_candidato().getCdf_candidato_id()+"'\n"+" AND cdf_sector_sector = '"+cdf_propuesta.getCdf_sector_sector().getCdf_sector_id()+"'\n";            

            Boolean ejecutarSentencia = Cado.ejecutarSentencia(sql);
        } catch (Exception e) {
        }
    }

 public List<Model_Cdf_propuesta> Buscar_cdf_propuesta(String cdf_patron) {sql = " AND cdf_candidato_candidato LIKE '%"+cdf_patron+"%' OR cdf_sector_sector LIKE '%"+cdf_patron+"%' OR cdf_propuesta_descripcion LIKE '%"+cdf_patron+"%'";Model_Cdf_propuesta model_cdf_propuesta= new Model_Cdf_propuesta();model_cdf_propuesta.setCdf_propuesta_consulta(sql);return getListar_cdf_propuesta(model_cdf_propuesta);}
    public static void main(String[] args) {
        Controller_Cdf_propuesta a= new Controller_Cdf_propuesta();
        List<Model_Cdf_propuesta> list_propuestas=a.getListar_cdf_propuesta(new Model_Cdf_propuesta(new Model_Cdf_sector(0)));
        System.out.println(list_propuestas.get(0).getCdf_candidato_candidato().getCdf_candidato_nombre());
    }
 
}

