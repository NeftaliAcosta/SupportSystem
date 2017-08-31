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

			try {
			    $mbd = new PDO($dsn, $usuario, $password, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
			    $mbd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				} catch (PDOException $e) {
				    echo 'Falló la conexión: ' . $e->getMessage();
				}


			return $mbd;
		}
	}
 ?>