/*
 Model Creado por Framework CESDEVELOPER desarrollado en Java
Author: Ing°. Alexander Manuel Céspedes Leonardo
Telefono: 203957
Bitel: 935589233
Email: a_ces10@hotmail.com
**/
package cdf.model;

 public class Model_Cdf_sector{

    Integer cdf_sector_id;

    String cdf_sector_codigo;

    String cdf_sector_nombre;

    String cdf_sector_estado;

    String cdf_sector_consulta;


    public Model_Cdf_sector(){

    }
    public Model_Cdf_sector(Integer cdf_sector_id){
         this.cdf_sector_id=cdf_sector_id;
    }

    public Integer getCdf_sector_id(){
        return cdf_sector_id;
    }

    public void setCdf_sector_id(Integer cdf_sector_id){
         this.cdf_sector_id=cdf_sector_id;
    }

    public String getCdf_sector_codigo(){
        return cdf_sector_codigo;
    }

    public void setCdf_sector_codigo(String cdf_sector_codigo){
         this.cdf_sector_codigo=cdf_sector_codigo;
    }

    public String getCdf_sector_nombre(){
        return cdf_sector_nombre;
    }

    public void setCdf_sector_nombre(String cdf_sector_nombre){
         this.cdf_sector_nombre=cdf_sector_nombre;
    }

    public String getCdf_sector_estado(){
        return cdf_sector_estado;
    }

    public void setCdf_sector_estado(String cdf_sector_estado){
         this.cdf_sector_estado=cdf_sector_estado;
    }

    public String getCdf_sector_consulta(){
        return cdf_sector_consulta;
    }

    public void setCdf_sector_consulta(String cdf_sector_consulta){
         this.cdf_sector_consulta=cdf_sector_consulta;
    }


  }