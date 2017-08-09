<?php 
	
	include "/../config.php";

	$title = "Sistema de Soporte";
	$templates = "templates/".TEMA."/";
	$token = urlencode(SERIAL);
	#$dominio = $_SERVER['SERVER_NAME'];
	$dominio = "elsazondeedith.com";

	class MvcController{

		public function pagina(){
			#include "views/template.php";
		}
		public function enlacesPaginasController(){
			$url ="https://gubynetwork.com/serversoporte.php?token=".$GLOBALS["token"]."&dom=".$GLOBALS["dominio"];
			#echo $url;
			$json = file_get_contents($url);
			$array = json_decode($json,true);
			if($array==0){
				echo "<h1>Error al validar la licencia, por favor contacte a su proveedor. </h1>";
			}

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