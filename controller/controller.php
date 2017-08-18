<?php 
	
	require_once('/../config.php');

	$title = "Sistema de Soporte";
	$templates = "templates/".TEMA."/";
	$token = urlencode(TOKEN);
	$myserial = SERIAL;
	#$dominio = $_SERVER['SERVER_NAME'];
	$dominio = "gubynetwork.com";

	class MvcController{

		public function pagina(){
			#include "views/template.php";
		}
		public function enlacesPaginasController(){
			$url ="https://gubynetwork.com/serversoporte.php?token=".$GLOBALS["token"]."&dom=".$GLOBALS["dominio"];
			#echo $url;
			$json = file_get_contents($url);
			$respuesta = json_decode($json,true);
			if($respuesta["estatus"]==1){
				if($respuesta["servicio"]==$GLOBALS["myserial"]){

					echo "Licencia válida";
				}else{
					echo $respuesta["servicio"]."<br>";
					echo $GLOBALS["myserial"]."<br>";
					echo "Licencia corrupta";
				}
			}else{
				echo "<br>";
				echo "<h1>".$respuesta['mensaje']."</h1>";
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