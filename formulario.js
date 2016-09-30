// 14/09/2016
// [JP] -> Comentario de Jorge Perez
// Archivo de Javascript / JQuery

$(document).ready(function() {

	//Cargo opciones inicialmente
	actualizarOpciones();

	//Si el usuario hace click en el boton enviar valido el formulario primero.
	$("#fMain").submit(function(event){
		if(! validarForm())
		{
			//Detengo el submit
			event.preventDefault();

			//Mostrar divErrores
			$('#divErrores').modal()                      // initialized with defaults
			$('#divErrores').modal({ keyboard: false })   // initialized with no keyboard
			$('#divErrores').modal('show')                // initializes and invokes show immediately
		}
		else
		{
			//Enviar formulario
			//this.submit();
		}
    });
	
	//Si el usuario cambia la categoria de productos, actualizo las opciones del select de productos.
	$("#selCategoria").change(function(){
			actualizarOpciones();
	});

});

function validarForm()
{
	var bExistenErrores=false;

	//if(condicion_error) {bExistenErrores=false;}
	
	return ! bExistenErrores;


}

function actualizarOpciones()
{
	var eleccion = document.getElementById("selCategoria").value;
	var parametros = {"eleccion" : eleccion};
	
	
		$.ajax({
                data:  parametros,
                url:   'buscar_productos.php',
                type:  'post',
                success:  function (response) {
                        $("#selProducto").html(response);
                }
		});
}

