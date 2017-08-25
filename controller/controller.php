<?php 
	
	require_once('/../config.php');

	$title = "Sistema de Soporte";
	$templates = "templates/".TEMA."/";
	$token = urlencode(TOKEN);
	$myserial = SERIAL;
	#$dominio = $_SERVER['SERVER_NAME'];
	$dominio = "gubynetwork.com"; 

	class MvcController{

		public function sistema(){
			$url ="https://gubynetwork.com/serversoporte.php?token=".$GLOBALS["token"]."&dom=".$GLOBALS["dominio"];
			#echo $url;
			$json = file_get_contents($url);
			$respuesta = json_decode($json,true);
			if($respuesta["estatus"]==1){
				if($respuesta["servicio"]==$GLOBALS["myserial"]){
					$this->enlacesPaginasController();
				}else{
					echo "<h1>Licencia corrupta</h1>";
					echo $GLOBALS["myserial"]."<br>";
				}
			}else{
				echo "<h1> Error".$respuesta['estatus']."</h1>";
				echo "<h1>".$respuesta['mensaje']."</h1>";
			}
		}

		public function pagina(){
			#include "views/template.php";
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