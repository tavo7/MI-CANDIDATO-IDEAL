/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cdf.model;

/**
 *
 * @author Manuel Cespedes
 */
public class Model_Cdf_Estadistica {
    Model_Cdf_candidato candidato;
    Integer almacenar;

    public Model_Cdf_Estadistica(Model_Cdf_candidato candidato, Integer almacenar) {
        this.candidato = candidato;
        this.almacenar = almacenar;
    }

    public Model_Cdf_Estadistica() {
    }
    

    public Model_Cdf_candidato getCandidato() {
        return candidato;
    }

    public void setCandidato(Model_Cdf_candidato candidato) {
        this.candidato = candidato;
    }

    public Integer getAlmacenar() {
        return almacenar;
    }

    public void setAlmacenar(Integer almacenar) {
        this.almacenar = almacenar;
    }
    
    
}
