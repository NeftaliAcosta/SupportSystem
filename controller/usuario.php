<?php
	require_once "/../models/crud.php";

	class Usuario{

		public function validarUsuarioController($datosController){
			$respuesta = Datos::loginuModel($datosController);
			if($datosController['usuario']==$respuesta['email']  && $datosController['password']==$respuesta['password']){
				return 1;
			}
		}
	}
?>
	