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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Controller_Cdf_usuario {

    private String sql;

    public List<Model_Cdf_usuario> getListar_cdf_usuario(Model_Cdf_usuario cdf_usuario) {
        ResultSet resultados = null;
        try {
            sql ="SELECT cdf_usuario_id,cdf_usuario_alias,cdf_usuario_ciudad,cdf_usuario_edad FROM cdf_usuario WHERE 1=1";

          if (cdf_usuario != null) {
            if (cdf_usuario.getCdf_usuario_id() != null) {
              sql += " and cdf_usuario_id='"+cdf_usuario.getCdf_usuario_id()+"'";
            }

            if (cdf_usuario.getCdf_usuario_alias() != null) {
              sql += " and cdf_usuario_alias='"+cdf_usuario.getCdf_usuario_alias()+"'";
            }

            if (cdf_usuario.getCdf_usuario_ciudad() != null) {
              sql += " and cdf_usuario_ciudad='"+cdf_usuario.getCdf_usuario_ciudad()+"'";
            }

            if (cdf_usuario.getCdf_usuario_edad() != null) {
              sql += " and cdf_usuario_edad='"+cdf_usuario.getCdf_usuario_edad()+"'";
            }

          if (cdf_usuario.getCdf_usuario_consulta() != null) {
                    sql +=cdf_usuario.getCdf_usuario_consulta();
                }

            }
            resultados = Cado.obtenerResultados(sql);
            List<Model_Cdf_usuario> list_cdf_usuario = new ArrayList<>();
            Model_Cdf_usuario model_cdf_usuario = null;
            while (resultados.next()) {
                model_cdf_usuario = new Model_Cdf_usuario();
                model_cdf_usuario.setCdf_usuario_id(resultados.getInt(1));
                model_cdf_usuario.setCdf_usuario_alias(resultados.getString(2));
                model_cdf_usuario.setCdf_usuario_ciudad(resultados.getString(3));
                model_cdf_usuario.setCdf_usuario_edad(resultados.getInt(4));
                list_cdf_usuario.add(model_cdf_usuario);
            }
            return list_cdf_usuario;

        } catch (SQLException e) {
        }
        return null;
    }


 public void Insertar_cdf_usuario(Model_Cdf_usuario cdf_usuario) {
        try {
      
                sql = "INSERT INTO cdf_usuario\n"
                        + "(\n"
                        + "cdf_usuario_alias,\n"
                        + "cdf_usuario_ciudad,\n"
                        + "cdf_usuario_edad) VALUES(\n"
                        + "'"+cdf_usuario.getCdf_usuario_alias()+"',\n"
                        + "'"+cdf_usuario.getCdf_usuario_ciudad()+"',\n"
                        + "'"+cdf_usuario.getCdf_usuario_edad()+"');\n";

            
            Boolean ejecutarSentencia = Cado.ejecutarSentencia(sql);
        } catch (Exception e) {
        }
    }

 public void Actualizar_cdf_usuario(Model_Cdf_usuario cdf_usuario) {
        try {
       
                sql = "UPDATE cdf_usuario\n"
                        + "SET\n"                       
                        + "cdf_usuario_alias = '"+cdf_usuario.getCdf_usuario_alias()+"',\n"
                        + "cdf_usuario_ciudad = '"+cdf_usuario.getCdf_usuario_ciudad()+"',\n"
                        + "cdf_usuario_edad = '"+cdf_usuario.getCdf_usuario_edad()+"'\n"
                        + "WHERE cdf_usuario_id = '"+cdf_usuario.getCdf_usuario_id()+"'\n";

            Boolean ejecutarSentencia = Cado.ejecutarSentencia(sql);
        } catch (Exception e) {
        }
    }

  public void Eliminar_cdf_usuario(Model_Cdf_usuario cdf_usuario) {
        try {
            
                sql = "DELETE FROM cdf_usuario WHERE cdf_usuario_id = '"+cdf_usuario.getCdf_usuario_id()+"'\n";            

            Boolean ejecutarSentencia = Cado.ejecutarSentencia(sql);
        } catch (Exception e) {
        }
    }

  public List<Model_Cdf_usuario> Buscar_cdf_usuario(String cdf_patron) {sql = " AND cdf_usuario_id LIKE '%"+cdf_patron+"%' OR cdf_usuario_alias LIKE '%"+cdf_patron+"%' OR cdf_usuario_ciudad LIKE '%"+cdf_patron+"%' OR cdf_usuario_edad LIKE '%"+cdf_patron+"%'";Model_Cdf_usuario model_cdf_usuario= new Model_Cdf_usuario();model_cdf_usuario.setCdf_usuario_consulta(sql);return getListar_cdf_usuario(model_cdf_usuario);}

  }