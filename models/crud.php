<?php 
	require_once "conexion.php";

	class Datos extends Conexion{
		
		public function loginuModel($datos){
			var_dump($datos);
			$stmt = Conexion::conectar()->prepare("select * from usuarios where email= :email");
			$stmt->bindParam(":email", $datos["email"], PDO::PARAM_STR);
			$respuesta = $stmt->execute();
			$respuesta = $stmt->fetch();
			return $respuesta;
		}
	}
 ?>