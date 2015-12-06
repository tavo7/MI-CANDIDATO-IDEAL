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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Controller_Cdf_candidato {

    private String sql;

    public List<Model_Cdf_candidato> getListar_cdf_candidato(Model_Cdf_candidato cdf_candidato) {
        ResultSet resultados = null;
        try {
            sql ="SELECT cdf_candidato_id,cdf_candidato_nombre,cdf_candidato_partidopolitico,cdf_candidato_estado,foto FROM cdf_candidato WHERE 1=1";

          if (cdf_candidato != null) {
            if (cdf_candidato.getCdf_candidato_id() != null) {
              sql += " and cdf_candidato_id='"+cdf_candidato.getCdf_candidato_id()+"'";
            }

            if (cdf_candidato.getCdf_candidato_nombre() != null) {
              sql += " and cdf_candidato_nombre='"+cdf_candidato.getCdf_candidato_nombre()+"'";
            }

            if (cdf_candidato.getCdf_candidato_partidopolitico() != null) {
              sql += " and cdf_candidato_partidopolitico='"+cdf_candidato.getCdf_candidato_partidopolitico()+"'";
            }

            if (cdf_candidato.getCdf_candidato_estado() != null) {
              sql += " and cdf_candidato_estado='"+cdf_candidato.getCdf_candidato_estado()+"'";
            }

          if (cdf_candidato.getCdf_candidato_consulta() != null) {
                    sql +=cdf_candidato.getCdf_candidato_consulta();
                }

            }
            resultados = Cado.obtenerResultados(sql);
            List<Model_Cdf_candidato> list_cdf_candidato = new ArrayList<>();
            Model_Cdf_candidato model_cdf_candidato = null;
            while (resultados.next()) {
                model_cdf_candidato = new Model_Cdf_candidato();
                model_cdf_candidato.setCdf_candidato_id(resultados.getInt(1));
                model_cdf_candidato.setCdf_candidato_nombre(resultados.getString(2));
                model_cdf_candidato.setCdf_candidato_partidopolitico(resultados.getString(3));
                model_cdf_candidato.setCdf_candidato_estado(resultados.getString(4));
                model_cdf_candidato.setFoto(resultados.getString(5));
                list_cdf_candidato.add(model_cdf_candidato);
            }
            return list_cdf_candidato;

        } catch (SQLException e) {
        }
        return null;
    }


 public void Insertar_cdf_candidato(Model_Cdf_candidato cdf_candidato) {
        try {     
                sql = "INSERT INTO cdf_candidato\n"
                        + "(\n"
                        + "cdf_candidato_nombre,\n"
                        + "cdf_candidato_partidopolitico,\n"
                        + "cdf_candidato_estado) VALUES(\n"
                        + "'"+cdf_candidato.getCdf_candidato_nombre()+"',\n"
                        + "'"+cdf_candidato.getCdf_candidato_partidopolitico()+"',\n"
                        + "'"+cdf_candidato.getCdf_candidato_estado()+"');\n";

            
            Boolean ejecutarSentencia = Cado.ejecutarSentencia(sql);
        } catch (Exception e) {
        }
    }

 public void Actualizar_cdf_candidato(Model_Cdf_candidato cdf_candidato) {
        try {
       
                sql = "UPDATE cdf_candidato\n"
                        + "SET\n"                       
                        + "cdf_candidato_nombre = '"+cdf_candidato.getCdf_candidato_nombre()+"',\n"
                        + "cdf_candidato_partidopolitico = '"+cdf_candidato.getCdf_candidato_partidopolitico()+"',\n"
                        + "cdf_candidato_estado = '"+cdf_candidato.getCdf_candidato_estado()+"'\n"
                        + "WHERE cdf_candidato_id = '"+cdf_candidato.getCdf_candidato_id()+"'\n";
            Boolean ejecutarSentencia = Cado.ejecutarSentencia(sql);
        } catch (Exception e) {
        }
    }

  public void Eliminar_cdf_candidato(Model_Cdf_candidato cdf_candidato) {
        try {            
            sql = "DELETE FROM cdf_candidato WHERE cdf_candidato_id = '"+cdf_candidato.getCdf_candidato_id()+"'\n";            
            Boolean ejecutarSentencia = Cado.ejecutarSentencia(sql);
        } catch (Exception e) {
        }
    }
  public List<Model_Cdf_candidato> Buscar_cdf_candidato(String cdf_patron) {sql = " AND cdf_candidato_id LIKE '%"+cdf_patron+"%' OR cdf_candidato_nombre LIKE '%"+cdf_patron+"%' OR cdf_candidato_partidopolitico LIKE '%"+cdf_patron+"%' OR cdf_candidato_estado LIKE '%"+cdf_patron+"%'";Model_Cdf_candidato model_cdf_candidato= new Model_Cdf_candidato();model_cdf_candidato.setCdf_candidato_consulta(sql);return getListar_cdf_candidato(model_cdf_candidato);}
    public static void main(String[] args) {
        Controller_Cdf_candidato c= new Controller_Cdf_candidato();
        
        
        System.out.println(c.getListar_cdf_candidato(null).get(0).getFoto());
    }
  
}