<?php 
	/*Validación de sesion en cache
	if(isset($_SESSION["sesion"])){
		header("location:index.php");
		exit();	
	}else{
		include 'views/home.php';
	}
	*/
	$rutat = "/../../../templates/gubytheme/";
	class MvcController{

		public function pagina(){
			include "views/template.php";
		}
		public function enlacesPaginasController(){
			if(isset( $_GET['modulo'])){
				$modulo= $_GET['modulo'];
			}else{
				$modulo = "home";
			}

			$respuesta = Paginas::enlacesPaginasModel($modulo);
			include $respuesta;
		}
	}
 ?>