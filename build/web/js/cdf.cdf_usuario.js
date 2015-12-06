function llenardatosactualizar_cdf_usuario(id,alias,ciudad,edad,input){
    var simplex = document.form_crud_View_Cdf_usuario;
    simplex.id.value=id;
    simplex.alias.value=alias;
    simplex.ciudad.value=ciudad;
    simplex.edad.value=edad;
    simplex.accion.value = input; 
    simplex.dinamicbutton.value = input;

}