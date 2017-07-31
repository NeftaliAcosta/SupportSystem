<?php 
require_once "../../controller/usuario.php";
	class Ajax{
		public $datosuser = array();

		public function validarLogin(){
			$datos = $this->datosuser;
			$respuesta = Usuario::validarUsuarioController($datos);
			echo $respuesta;
		}
	}

	$a = new Ajax();
	$a ->datosuser["usuario"]= $_POST["usuario"];
	$a ->datosuser["password"]= $_POST["pass"];
	$a ->validarLogin();
 ?>