/*
 Model Creado por Framework CESDEVELOPER desarrollado en Java
Author: Ing°. Alexander Manuel Céspedes Leonardo
Telefono: 203957
Bitel: 935589233
Email: a_ces10@hotmail.com
**/
package cdf.model;

 public class Model_Cdf_puntuacion{

    Integer cdf_puntuacion_id;

    Model_Cdf_candidato cdf_candidato_candidato;

    String cdf_puntuacion_fecha;

    String cdf_puntuacion_hora;

    String cdf_puntuacion_consulta;


    public Model_Cdf_puntuacion(){

    }
    public Model_Cdf_puntuacion(Integer cdf_puntuacion_id){
         this.cdf_puntuacion_id=cdf_puntuacion_id;
    }

    public Integer getCdf_puntuacion_id(){
        return cdf_puntuacion_id;
    }

    public void setCdf_puntuacion_id(Integer cdf_puntuacion_id){
         this.cdf_puntuacion_id=cdf_puntuacion_id;
    }

    public Model_Cdf_candidato getCdf_candidato_candidato(){
        return cdf_candidato_candidato;
    }

    public void setCdf_candidato_candidato(Model_Cdf_candidato cdf_candidato_candidato){
         this.cdf_candidato_candidato=cdf_candidato_candidato;
    }

    public String getCdf_puntuacion_fecha(){
        return cdf_puntuacion_fecha;
    }

    public void setCdf_puntuacion_fecha(String cdf_puntuacion_fecha){
         this.cdf_puntuacion_fecha=cdf_puntuacion_fecha;
    }

    public String getCdf_puntuacion_hora(){
        return cdf_puntuacion_hora;
    }

    public void setCdf_puntuacion_hora(String cdf_puntuacion_hora){
         this.cdf_puntuacion_hora=cdf_puntuacion_hora;
    }

    public String getCdf_puntuacion_consulta(){
        return cdf_puntuacion_consulta;
    }

    public void setCdf_puntuacion_consulta(String cdf_puntuacion_consulta){
         this.cdf_puntuacion_consulta=cdf_puntuacion_consulta;
    }


  }