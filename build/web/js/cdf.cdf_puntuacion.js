function llenardatosactualizar_cdf_puntuacion(id,candidato,fecha,hora,input){
    var simplex = document.form_crud_View_Cdf_puntuacion;
    simplex.id.value=id;
    simplex.candidato.value=candidato;
    simplex.fecha.value=fecha;
    simplex.hora.value=hora;
    simplex.accion.value = input; 
    simplex.dinamicbutton.value = input;

}