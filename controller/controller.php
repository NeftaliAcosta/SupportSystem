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
			if(isset($_COOKIE["dd"])) {
				setlocale(LC_ALL,"es_MX");
				$hoy = strftime("%Y-%m-%d");
				$fvencimiento = $this->desencriptar($_COOKIE["dd"]);
				$ldom = $this->desencriptar($_COOKIE["dom"]);
				if($fvencimiento >= $hoy && $ldom==$GLOBALS["dominio"]){ 
					$this->enlacesPaginasController();
				}else{
					$respuesta = $this->webservice();
					if($respuesta["estatus"]==1){
						if($respuesta["servicio"]==$GLOBALS["myserial"]){
							$this->crearcookies($respuesta['vencimiento'], $respuesta['dominio']);
							$this->enlacesPaginasController();
						}else{
							$this->crearcookies($respuesta['vencimiento'], $respuesta['dominio']);
							echo "<h1>Licencia corrupta</h1>";
							echo $GLOBALS["myserial"]."<br>";
						}
					}else{
						$this->crearcookies($respuesta['vencimiento'], $respuesta['dominio']);
						echo "<h1> Error".$respuesta['estatus']."</h1>";
						echo "<h1>".$respuesta['mensaje']."</h1>";
					}
				}
			}else{
				$respuesta = $this->webservice();
				if($respuesta["estatus"]==1){
					if($respuesta["servicio"]==$GLOBALS["myserial"]){
						$this->crearcookies($respuesta['vencimiento'], $respuesta['dominio']);
						$this->enlacesPaginasController();
					}else{
						$this->crearcookies($respuesta['vencimiento'], $respuesta['dominio']);
						echo "<h1>Licencia corrupta</h1>";
						echo $GLOBALS["myserial"]."<br>";
					}
				}else if($respuesta==0){
					echo "Código de error: 51";
				}else{
					echo "<h1> Error".$respuesta['estatus']."</h1>";
					echo "<h1>".$respuesta['mensaje']."</h1>";
				}
			}
		}


		public function crearcookies($vencimiento, $dominio){
			$duedate = $this->encriptar($vencimiento);
			$dom = $this->encriptar($dominio);
			setcookie('dd', $duedate, time() + (86400 * 5));
			setcookie('dom', $dom, time() + (86400 * 5));
		}

		public function webservice(){
			$url ="https://gubynetwork.com/serversoporte.php?token=".$GLOBALS["token"]."&dom=".$GLOBALS["dominio"];
			$json = file_get_contents($url);
			if($json===false){
				echo "<h2>Error al intentar conectar con el servidor de licenciamiento</h2><br>";
				return 0;
			}else{
				$respuesta = json_decode($json,true);
				return $respuesta;	
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





		function encriptar($texto){
	    $key='syst3msuPPort2017gUby';
		$encrypted = base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, md5($key), $texto, MCRYPT_MODE_CBC, md5(md5($key))));
		return $encrypted;
		}
		function desencriptar($texto){
			$key='syst3msuPPort2017gUby'; 
			$decrypted = rtrim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, md5($key), base64_decode($texto), MCRYPT_MODE_CBC, md5(md5($key))), "\0");
			    return $decrypted;
		}
	}

	
 ?>