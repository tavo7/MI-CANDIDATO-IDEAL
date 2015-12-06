function llenardatosactualizar_cdf_sector(id,codigo,nombre,estado,input){
    var simplex = document.form_crud_View_Cdf_sector;
    simplex.id.value=id;
    simplex.codigo.value=codigo;
    simplex.nombre.value=nombre;
    simplex.estado.value=estado;
    simplex.accion.value = input; 
    simplex.dinamicbutton.value = input;

}