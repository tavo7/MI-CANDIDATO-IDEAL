/*
 Model Creado por Framework CESDEVELOPER desarrollado en Java
Author: Ing°. Alexander Manuel Céspedes Leonardo
Telefono: 203957
Bitel: 935589233
Email: a_ces10@hotmail.com
**/
package cdf.model;

 public class Model_Cdf_valoracion{

    Integer cdf_valoracion_id;

    String cdf_valoracion_valor;

    String cdf_valoracion_fechavaloracion;

    String cdf_valoracion_horavaloracion;

    Model_Cdf_usuario cdf_usuario_usuario;

    Model_Cdf_candidato cdf_candidato_candidato;

    Model_Cdf_sector cdf_sector_sector;

    String cdf_valoracion_consulta;


    public Model_Cdf_valoracion(){

    }
    public Model_Cdf_valoracion(Integer cdf_valoracion_id){
         this.cdf_valoracion_id=cdf_valoracion_id;
    }

    public Model_Cdf_valoracion(Model_Cdf_candidato cdf_candidato_candidato) {
        this.cdf_candidato_candidato = cdf_candidato_candidato;
    }

    
    public Integer getCdf_valoracion_id(){
        return cdf_valoracion_id;
    }

    public void setCdf_valoracion_id(Integer cdf_valoracion_id){
         this.cdf_valoracion_id=cdf_valoracion_id;
    }

    public String getCdf_valoracion_valor(){
        return cdf_valoracion_valor;
    }

    public void setCdf_valoracion_valor(String cdf_valoracion_valor){
         this.cdf_valoracion_valor=cdf_valoracion_valor;
    }

    public String getCdf_valoracion_fechavaloracion(){
        return cdf_valoracion_fechavaloracion;
    }

    public void setCdf_valoracion_fechavaloracion(String cdf_valoracion_fechavaloracion){
         this.cdf_valoracion_fechavaloracion=cdf_valoracion_fechavaloracion;
    }

    public String getCdf_valoracion_horavaloracion(){
        return cdf_valoracion_horavaloracion;
    }

    public void setCdf_valoracion_horavaloracion(String cdf_valoracion_horavaloracion){
         this.cdf_valoracion_horavaloracion=cdf_valoracion_horavaloracion;
    }

    public Model_Cdf_usuario getCdf_usuario_usuario(){
        return cdf_usuario_usuario;
    }

    public void setCdf_usuario_usuario(Model_Cdf_usuario cdf_usuario_usuario){
         this.cdf_usuario_usuario=cdf_usuario_usuario;
    }

    public Model_Cdf_candidato getCdf_candidato_candidato(){
        return cdf_candidato_candidato;
    }

    public void setCdf_candidato_candidato(Model_Cdf_candidato cdf_candidato_candidato){
         this.cdf_candidato_candidato=cdf_candidato_candidato;
    }

    public Model_Cdf_sector getCdf_sector_sector() {
        return cdf_sector_sector;
    }

    public void setCdf_sector_sector(Model_Cdf_sector cdf_sector_sector) {
        this.cdf_sector_sector = cdf_sector_sector;
    }    

    public String getCdf_valoracion_consulta(){
        return cdf_valoracion_consulta;
    }

    public void setCdf_valoracion_consulta(String cdf_valoracion_consulta){
         this.cdf_valoracion_consulta=cdf_valoracion_consulta;
    }


  }