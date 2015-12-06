function llenardatosactualizar_cdf_candidato(id,nombre,partidopolitico,estado,input){
    var simplex = document.form_crud_View_Cdf_candidato;
    simplex.id.value=id;
    simplex.nombre.value=nombre;
    simplex.partidopolitico.value=partidopolitico;
    simplex.estado.value=estado;
    simplex.accion.value = input; 
    simplex.dinamicbutton.value = input;

}