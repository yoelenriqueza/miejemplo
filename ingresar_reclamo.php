<?php
		
		//Incluyo el archivo de configuracion
		require_once('configure.php');

		main();


		function main()
		{
			
			//Valido los datos del formulario
			validarFormulario();

			//Ingreso el reclamo a la base de datos
			guardarReclamo();

			//Incluyo el formulario HTML.
			include('./formulario.html');
		}

		
		// 14/09/2016
		// [JP] -> Comentario de Jorge Perez
		// Se valida del lado del servidor que los campos cumplan los criterios pre-establecidos.
		function validarFormulario()
		{
		}

		// 14/09/2016
		// [JP] -> Comentario de Jorge Perez
		// Se almacena el reclamo en la base de datos
		function guardarReclamo()
		{
		}

>?

