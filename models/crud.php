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





		/*Obtencion blog*/

		public function getpost(){
			$stmt = Conexion::conectar()->prepare("select * from post");
			$respuesta = $stmt->execute();
			$respuesta = $stmt->fetchAll();
			return $respuesta;
		}
		public function getpostbyid($idpost){
			$id = $idpost;
			$stmt = Conexion::conectar()->prepare("select * from post where id=:id");
			$stmt->bindParam(":id", $id, PDO::PARAM_INT);
			$respuesta = $stmt->execute();
			$respuesta = $stmt->fetch();
			return $respuesta;
		}

		public function updatecats($id, $cats){
			$stmt = Conexion::conectar()->prepare("update post set categorias=:categorias where id=:id");
			$stmt->bindParam(":categorias", $cats);
			$stmt->bindParam(":id", $id, PDO::PARAM_INT);
			$respuesta = $stmt->execute();
			return $respuesta;
		}

		public function getcatbypost($id){
			/*Primero se obtiene el string de las categorias del post*/
			$stmt = Conexion::conectar()->prepare("select categorias from post where id=:id");
			$stmt->bindParam(":id", $id, PDO::PARAM_INT);
			$respuesta = $stmt->execute();
			$respuesta = $stmt->fetch();

			/*Ahora se convierte el string de categorias a un array para poder recorrerlo*/
			$categorias = $respuesta['categorias'];
			$categorias = explode(',', $categorias);
			/*Se recorre el array y se hace la consulta de cada categoria*/
			foreach ($categorias as $posicion => $cat) {
				$stmt = Conexion::conectar()->prepare("select id,categoria from categorias where id=:id");
				$stmt->bindParam(":id", $cat, PDO::PARAM_INT);
				$respuesta = $stmt->execute();
				$respuesta = $stmt->fetch();
				#var_dump($respuesta['categoria']);
				$cats [] = array("categoria" =>$respuesta['categoria'], "identificador"=>$respuesta["id"]);
			}
			/*Se regresa un array con el nombre de cada categoría*/
			return $cats;
		}

		public function getcatall(){
			$stmt = Conexion::conectar()->prepare("select id,categoria from categorias");
			$respuesta = $stmt->execute();
			$respuesta = $stmt->fetchAll();

			return $respuesta;
		}

		public function search($search){
			$stmt = Conexion::conectar()->prepare('select * from post where titulo like "%'.$search.'%"');
			$respuesta = $stmt->execute();
			$respuesta = $stmt->fetchAll();
			return $respuesta;
		}

		public function valcat($id){
			$stmt = Conexion::conectar()->prepare('select * from categorias where id=:id');
			$stmt->bindParam(":id", $id, PDO::PARAM_INT);
			$respuesta = $stmt->execute();
			$respuesta = $stmt->fetch();
			return $respuesta;
		}

		public function getcatbyid($id){
			/*Obtener todos los pots*/
			$stmt = Conexion::conectar()->prepare('select id, categorias from post');
			$respuesta = $stmt->execute();
			$respuesta = $stmt->fetchAll();
			/*Filtrar los post que tienen la categoria que se recibe*/
			foreach ($respuesta as $key => $value) {
				$comparacion = strpos($value['categorias'], $id);
				if($comparacion !== FALSE){
				    $posts [] = array("postid" =>$value['id']);
				}
			}
			/*Obtener todo el contenido de los posts y generar un array de ellos*/
			foreach ($posts as $key => $value) {
				$stmt = Conexion::conectar()->prepare('select * from post where id=:id');
				$stmt->bindParam(":id", $value['postid'], PDO::PARAM_INT);
				$respuesta = $stmt->execute();
				$respuesta = $stmt->fetch();
				 $pcontent [] = array($respuesta);

			}
			return $pcontent;
		}
	}
 ?>