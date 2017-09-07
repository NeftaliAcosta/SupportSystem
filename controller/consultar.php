<?php 
	class consulta(){


		public function ejecutar($consulta, $retorno){
			$retorno=$retorno;
			$stmt = Conexion::conectar()->prepare($consulta);
			$respuesta = $stmt->execute();
			if($retorno==1){
				$respuesta = $stmt->fetch();
			}elseif($retorno==2){
				$respuesta = $stmt->fetchAll();
			}
		}
	}
 ?>