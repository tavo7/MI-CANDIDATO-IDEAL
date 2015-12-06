/*
 Model Creado por Framework CESDEVELOPER desarrollado en Java
Author: Ing°. Alexander Manuel Céspedes Leonardo
Telefono: 203957
Bitel: 935589233
Email: a_ces10@hotmail.com
**/
package cdf.model;

 public class Model_Cdf_propuesta{

     Model_Cdf_candidato cdf_candidato_candidato;

    Model_Cdf_sector cdf_sector_sector;

    String cdf_propuesta_descripcion;

    String cdf_propuesta_consulta;


    public Model_Cdf_propuesta(){

    }

    public Model_Cdf_propuesta(Model_Cdf_sector cdf_sector_sector) {
        this.cdf_sector_sector = cdf_sector_sector;
    }
    public Model_Cdf_propuesta(Model_Cdf_candidato cdf_candidato_candidato) {
        this.cdf_candidato_candidato = cdf_candidato_candidato;
    }
    

    public Model_Cdf_candidato getCdf_candidato_candidato() {
        return cdf_candidato_candidato;
    }

    public void setCdf_candidato_candidato(Model_Cdf_candidato cdf_candidato_candidato) {
        this.cdf_candidato_candidato = cdf_candidato_candidato;
    }

    public Model_Cdf_sector getCdf_sector_sector() {
        return cdf_sector_sector;
    }

    public void setCdf_sector_sector(Model_Cdf_sector cdf_sector_sector) {
        this.cdf_sector_sector = cdf_sector_sector;
    }    

    public String getCdf_propuesta_descripcion(){
        return cdf_propuesta_descripcion;
    }

    public void setCdf_propuesta_descripcion(String cdf_propuesta_descripcion){
         this.cdf_propuesta_descripcion=cdf_propuesta_descripcion;
    }

    public String getCdf_propuesta_consulta(){
        return cdf_propuesta_consulta;
    }

    public void setCdf_propuesta_consulta(String cdf_propuesta_consulta){
         this.cdf_propuesta_consulta=cdf_propuesta_consulta;
    }


  }