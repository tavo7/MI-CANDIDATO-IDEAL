/*
 Model Creado por Framework CESDEVELOPER desarrollado en Java
Author: Ing°. Alexander Manuel Céspedes Leonardo
Telefono: 203957
Bitel: 935589233
Email: a_ces10@hotmail.com
**/
package cdf.model;

 public class Model_Cdf_usuario{

    Integer cdf_usuario_id;

    String cdf_usuario_alias;

    String cdf_usuario_ciudad;

    Integer cdf_usuario_edad;

    String cdf_usuario_consulta;


    public Model_Cdf_usuario(){

    }
    public Model_Cdf_usuario(Integer cdf_usuario_id){
         this.cdf_usuario_id=cdf_usuario_id;
    }

    public Integer getCdf_usuario_id(){
        return cdf_usuario_id;
    }

    public void setCdf_usuario_id(Integer cdf_usuario_id){
         this.cdf_usuario_id=cdf_usuario_id;
    }

    public String getCdf_usuario_alias(){
        return cdf_usuario_alias;
    }

    public void setCdf_usuario_alias(String cdf_usuario_alias){
         this.cdf_usuario_alias=cdf_usuario_alias;
    }

    public String getCdf_usuario_ciudad(){
        return cdf_usuario_ciudad;
    }

    public void setCdf_usuario_ciudad(String cdf_usuario_ciudad){
         this.cdf_usuario_ciudad=cdf_usuario_ciudad;
    }

    public Integer getCdf_usuario_edad(){
        return cdf_usuario_edad;
    }

    public void setCdf_usuario_edad(Integer cdf_usuario_edad){
         this.cdf_usuario_edad=cdf_usuario_edad;
    }

    public String getCdf_usuario_consulta(){
        return cdf_usuario_consulta;
    }

    public void setCdf_usuario_consulta(String cdf_usuario_consulta){
         this.cdf_usuario_consulta=cdf_usuario_consulta;
    }


  }