<?php
	
	/*Inicio de sesion
	if(isset($_POST["email"]) && isset($_POST["password"])){
		$usuario = $_POST["email"];
		$pass = $_POST["password"];
		if($usuario=='correo@correo.com' && $pass='123'){
			header("location:panel.php");
		}
		
	}

	*/

	class Usuario{
		public function validarUsuarioController($datosController){
				$usuario =$datosController["usuario"];
				$pass = $datosController["password"];
				if($usuario=='correo@correo.com' && $pass='123'){
					return 1;
				}else{
					return 0;
				}
		}
	}
?>
	