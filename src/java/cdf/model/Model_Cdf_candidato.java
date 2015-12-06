/*
 Model Creado por Framework CESDEVELOPER desarrollado en Java
Author: Ing°. Alexander Manuel Céspedes Leonardo
Telefono: 203957
Bitel: 935589233
Email: a_ces10@hotmail.com
**/
package cdf.model;

 public class Model_Cdf_candidato{

    Integer cdf_candidato_id;

    String cdf_candidato_nombre;

    String cdf_candidato_partidopolitico;

    String cdf_candidato_estado;

    String cdf_candidato_consulta;

    String foto;

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }
    

    public Model_Cdf_candidato(){

    }
    public Model_Cdf_candidato(Integer cdf_candidato_id){
         this.cdf_candidato_id=cdf_candidato_id;
    }

    public Integer getCdf_candidato_id(){
        return cdf_candidato_id;
    }

    public void setCdf_candidato_id(Integer cdf_candidato_id){
         this.cdf_candidato_id=cdf_candidato_id;
    }

    public String getCdf_candidato_nombre(){
        return cdf_candidato_nombre;
    }

    public void setCdf_candidato_nombre(String cdf_candidato_nombre){
         this.cdf_candidato_nombre=cdf_candidato_nombre;
    }

    public String getCdf_candidato_partidopolitico(){
        return cdf_candidato_partidopolitico;
    }

    public void setCdf_candidato_partidopolitico(String cdf_candidato_partidopolitico){
         this.cdf_candidato_partidopolitico=cdf_candidato_partidopolitico;
    }

    public String getCdf_candidato_estado(){
        return cdf_candidato_estado;
    }

    public void setCdf_candidato_estado(String cdf_candidato_estado){
         this.cdf_candidato_estado=cdf_candidato_estado;
    }

    public String getCdf_candidato_consulta(){
        return cdf_candidato_consulta;
    }

    public void setCdf_candidato_consulta(String cdf_candidato_consulta){
         this.cdf_candidato_consulta=cdf_candidato_consulta;
    }


  }