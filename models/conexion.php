<?php

require_once('/../config.php');
$dbus = DB_USER;
$bdname = DB_NAME;
$bdpw= DB_PASS;
$bdhost = DB_HOST;

	class Conexion{

		public function conectar(){
			$dsn = "mysql:host=".$GLOBALS['bdhost'].";dbname=".$GLOBALS['bdname']."";
			$usuario =  $GLOBALS['dbus'];
			$password = $GLOBALS['bdpw'];
			$mbd=123456;
			try {
			    $mbd = new PDO($dsn, $usuario, $password, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8", PDO::ATTR_PERSISTENT => true));

			    $mbd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				} catch (PDOException $e) {
				   # echo '<h1>Falló la conexión: ' . $e->getMessage().'</h1>';
					echo '<h2>Imposible conectar con el servidor de base de datos</h2>';
					die(false);
				}


			return $mbd;
		}
	}
 ?>