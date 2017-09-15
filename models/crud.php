<?php 
	require_once "conexion.php";

	class Datos extends Conexion{
		public static $tabla = array(
				"sistema"=>"config",
				"usuarios" => "usuarios",
				"blogpost"=>"blog_post",
				"blogcategorias"=>"blog_categorias",
				"ticket"=>"ticket",
				"mensajeticket"=>"ticket_mensajes",
				"ticketestado"=>"ticket_estados",
				"ticketcanal"=>"ticket_canales",
				"ticketdepartamentos"=>"ticket_departamentos",
				"ticketprioridad"=>"ticket_prioridades",
				"kbcategorigas" => "kb_categorias",
				"kbarticulos"=>"kb_articulos"
				);

		
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
			$consulta = "select * from ".self::$tabla['blogpost'];
			$respuesta = Datos::ejecutar($consulta,2);
			return $respuesta;
		}
		public function getpostbyid($idpost){
			$id = $idpost;
			$stmt = Conexion::conectar()->prepare("select * from blog_post where id=:id");
			$stmt->bindParam(":id", $id, PDO::PARAM_INT);
			$respuesta = $stmt->execute();
			$respuesta = $stmt->fetch();
			return $respuesta;
		}

		public function updatecats($id, $cats){
			$stmt = Conexion::conectar()->prepare("update post set blog_categorias=:categorias where id=:id");
			$stmt->bindParam(":categorias", $cats);
			$stmt->bindParam(":id", $id, PDO::PARAM_INT);
			$respuesta = $stmt->execute();
			return $respuesta;
		}

		public function getcatbypost($id){
			/*Primero se obtiene el string de las categorias del post*/
			$stmt = Conexion::conectar()->prepare("select categorias from blog_post where id=:id");
			$stmt->bindParam(":id", $id, PDO::PARAM_INT);
			$respuesta = $stmt->execute();
			$respuesta = $stmt->fetch();
			/*Ahora se convierte el string de categorias a un array para poder recorrerlo*/
			$categorias = $respuesta['categorias'];
			$categorias = explode(',', $categorias);
			/*Se recorre el array y se hace la consulta de cada categoria*/
			foreach ($categorias as $posicion => $cat) {
				$stmt = Conexion::conectar()->prepare("select id,categoria from blog_categorias where id=:id");
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
			$stmt = Conexion::conectar()->prepare("select id,categoria from blog_categorias");
			$respuesta = $stmt->execute();
			$respuesta = $stmt->fetchAll();

			return $respuesta;
		}

		public function search($search){
			$stmt = Conexion::conectar()->prepare('select * from blog_post where titulo like "%'.$search.'%"');
			$respuesta = $stmt->execute();
			$respuesta = $stmt->fetchAll();
			return $respuesta;
		}

		public function valcat($id){
			$stmt = Conexion::conectar()->prepare('select * from blog_categorias where id=:id');
			$stmt->bindParam(":id", $id, PDO::PARAM_INT);
			$respuesta = $stmt->execute();
			$respuesta = $stmt->fetch();
			return $respuesta;
		}

		public function getcatbyid($id){
			/*Obtener todos los pots*/
			$stmt = Conexion::conectar()->prepare('select id,categorias from blog_post');
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
			if(isset($posts)){/*Se verifica si existe array de post validos*/
				foreach ($posts as $key => $value) {
					$stmt = Conexion::conectar()->prepare('select * from blog_post where id=:id');
					$stmt->bindParam(":id", $value['postid'], PDO::PARAM_INT);
					$respuesta = $stmt->execute();
					$respuesta = $stmt->fetch();
					 $pcontent [] = array($respuesta);
				}
					return $pcontent;
			}else{
				return 0;
			}
		}



		/*Base de conocimiento*/
		function getfathercatmodel(){
			$consulta=("select * from kb_categorias where padre IS NULL");
			$respuesta = Datos::ejecutar($consulta, 2);
			return $respuesta;
		}

		public function getsubcatmodel($idcat){
			$stmt = Conexion::conectar()->prepare("select * from kb_categorias where padre =:id");
			$stmt->bindParam(":id", $idcat, PDO::PARAM_INT);
			$respuesta = $stmt->execute();
			$respuesta = $stmt->fetchAll();
			return $respuesta;
		}

		public function getkbarticulobycat($categoria){
			$stmt = Conexion::conectar()->prepare("select * from kb_articulos where categoria =:id and privado=0");
			$stmt->bindParam(":id", $categoria, PDO::PARAM_INT);
			$respuesta = $stmt->execute();
			$respuesta = $stmt->fetchAll();
			return $respuesta;
		}

		public function getkbarticulobyid($id){
			$stmt = Conexion::conectar()->prepare("select * from kb_articulos where id=:id");
			$stmt->bindParam(":id", $id, PDO::PARAM_INT);
			$respuesta = $stmt->execute();
			$respuesta = $stmt->fetchAll();
			return $respuesta;	
		}

		public function getcatbyidkb($idcategoria){
			$idcategoria = (int) $idcategoria;
			if(is_int($idcategoria)){
				$stmt = Conexion::conectar()->prepare("select * from kb_categorias where id=:id");
				$stmt->bindParam(":id", $idcategoria, PDO::PARAM_INT);
				$respuesta = $stmt->execute();
				$respuesta = $stmt->fetchAll();

				if($respuesta == NULL){
					return 0;
				}else{
					return 1;
				}
			}else{
				return 0;
			}
		}

		public function getbreadcrumbscat($id){
			$stmt = Conexion::conectar()->prepare('select id, nombre, padre from  '.self::$tabla['kbcategorigas'].' where id=:id');
			$stmt->bindParam(":id", $id, PDO::PARAM_INT);
			$respuesta = $stmt->execute();
			$respuesta = $stmt->fetch();
			$id = $respuesta['id'];
			do{
				$stmt = Conexion::conectar()->prepare('select id, nombre, padre from '.self::$tabla['kbcategorigas'].' where id=:id');
				$stmt->bindParam(":id", $id, PDO::PARAM_INT);
				$respuesta = $stmt->execute();
				$respuesta = $stmt->fetch();
				$menu [] = array("id"=>$respuesta['id'], "nombre"=>$respuesta['nombre'], "padre"=>$respuesta['padre']);
				$id = $respuesta['padre'];
			}while($respuesta['padre']!=NULL);
			
			return $menu;
		}


		public function getbreadcrumbsart($id){
			$stmt = Conexion::conectar()->prepare('select id from  '.self::$tabla['kbarticulos'].' where id=:id');
			$stmt->bindParam(":id", $id, PDO::PARAM_INT);
			$respuesta = $stmt->execute();
			$respuesta = $stmt->fetch();
			$id = $respuesta['id'];
			do{
				$stmt = Conexion::conectar()->prepare('select id, nombre, padre from '.self::$tabla['kbcategorigas'].' where id=:id');
				$stmt->bindParam(":id", $id, PDO::PARAM_INT);
				$respuesta = $stmt->execute();
				$respuesta = $stmt->fetch();
				$menu [] = array("id"=>$respuesta['id'], "nombre"=>$respuesta['nombre'], "padre"=>$respuesta['padre']);
				$id = $respuesta['padre'];
			}while($respuesta['padre']!=NULL);
			var_dump($menu);
			return $menu;
		}






		public function validar($tabla, $id, $tipo){
			if(is_int($id)){
				$consulta ='select * from '.$tabla.' where id='.$id;
				$respuesta = Datos::ejecutar($consulta, $tipo);
				if($respuesta != NULL || $respuesta != 0){
					return 0;
				}else{
					return 1;
				}
			}else{
				return 1;
			}
		}
		
		
		public function ejecutar($consulta, $retorno){
			$retorno=$retorno;
			$stmt = Conexion::conectar()->prepare($consulta);
			if($stmt->execute()){
				if($retorno==1){
					$respuesta = $stmt->fetch();
					return $respuesta;
				}elseif($retorno==2){
					$respuesta = $stmt->fetchAll();
					return $respuesta;
				}
			}else{
				return 0;
			}
		}


	}
 ?>