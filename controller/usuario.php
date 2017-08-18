<?php
	
	class Usuario{

		public function validarUsuarioController($datosController){
			$respuesta = Datos::loginuModel($datosController);
			return $respuesta;
		}
	}
?>
	