<?php 
	

	$title = "Sistema de Soporte";
	$templates = "templates/gubytheme/";
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