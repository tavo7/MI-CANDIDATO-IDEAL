/*
 Cado Creado por Framework CESDEVELOPER(cdf) desarrollado en Java
Author: Ing°. Alexander Manuel Céspedes Leonardo
Telefono: 203957
Bitel: 935589233
Email: a_ces10@hotmail.com
**/
package cdf.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Cado {

    static Connection conexionPuente;
    static PreparedStatement prepararSentencia;
    static ResultSet resultados;

    private Cado() {
        //not exists intantiation ..
    }
// implementando el patron singleton.
    public static Connection getConexion() {
        String urlConexion = "";
        try {
            if (conexionPuente == null) {
                urlConexion = "jdbc:mysql://" + Configuracion.servidorLocal + ":3306/" + Configuracion.baseDatos;
                Class.forName("com.mysql.jdbc.Driver");
                conexionPuente = DriverManager.getConnection(urlConexion, Configuracion.user, Configuracion.password);
            }
            return conexionPuente;
        } catch (ClassNotFoundException | SQLException ex) {
            return null;
        }
    }

    public static Boolean ejecutarSentencia(String sentencia) {
        Integer respuesta = 0;
        try {
            prepararSentencia = getConexion().prepareStatement(sentencia, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            respuesta = prepararSentencia.executeUpdate();
        } catch (SQLException e) {
        }
        return respuesta != 0;
    }

    public static ResultSet obtenerLlave(String sentencia) {
        try {            
            prepararSentencia = getConexion().prepareStatement(sentencia, Statement.RETURN_GENERATED_KEYS);
            prepararSentencia.executeUpdate();
            resultados = prepararSentencia.getGeneratedKeys();         
            return resultados;
        } catch (SQLException e) {           
            return null;
        }
    }
    public static ResultSet obtenerResultados(String sentencia) {
        try {            
            prepararSentencia = getConexion().prepareStatement(sentencia, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            resultados = prepararSentencia.executeQuery();
            return resultados;
        } catch (SQLException e) {           
            return null;
        }
    }
    public static void main(String[] args) {
        System.out.println(getConexion());
    }
}
