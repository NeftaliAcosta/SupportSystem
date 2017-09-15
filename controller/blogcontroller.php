<?php 

	class blogcontroller{
		public function menu(){
			if(isset($_GET['ver'])){
				$idpost = $_GET['ver'];
				$post = Datos::getpostbyid($idpost);
				echo '<li>'.$post['titulo'].' </li>';
			}
		}

		public function obtenerpost(){
			if(isset($_GET['ver']) && !isset($_GET['s']) && !isset($_GET['cat'])){
				$idpost = $_GET['ver'];
				$post = Datos::getpostbyid($idpost);
				if($post>1){
					echo '<h1 class="titulo-post">'.$post['titulo'].'</h1>';
					echo '<hr><p><i class="fa fa-clock-o"></i> Publicado el: '.$post['fecha'].' Por: <b>Neftali Acosta</b></p><hr>';
					echo '<img class="img-responsive" data-src="img/medios/'.$post['imagen'].'" alt=""><hr>';
					echo '<p>'.$post['contenido'].'</p>';
				}else{
					echo "¡Ups! Este post no existe...";
				}

			}elseif(isset($_GET['s']) && !isset($_GET['ver']) && !isset($_GET['cat']) ){
				$search = $_GET['s'];
				$resultado = Datos::search($search);
				if($resultado != NULL){
					foreach($resultado as $row => $item){
					echo ' <h2><a href="index.php?modulo=blog&ver='.$item['id'].'">'.$item['titulo'].'</a></h2>';
					echo '<p><i class="fa fa-clock-o"></i> Publicado el: '.$item['fecha'].' </p>';
					echo '
						<a href="#">
		                	<img class="img-responsive img-hover" data-src="img/medios/'.$item['imagen'].'" alt="">
		               		</a><br>
							';
					echo '<p>'.$item['extracto'].'...</p>';
					echo '<a class="btn btn-primary" href="index.php?modulo=blog&ver='.$item['id'].'">
							Leer más. <i class="fa fa-angle-right"></i>
						  </a><hr>';
					}
				}else{
					echo "No hay resultados para esta búsqueda";
				}

			}elseif(isset($_GET['cat']) && !isset($_GET['ver']) && !isset($_GET['s'])){
				$id = $_GET['cat'];
				$validar = Datos::valcat($id);
				if($validar !== FALSE){
					$respuesta = Datos::getcatbyid($id);
					if($respuesta != 0){
						foreach ($respuesta as $item) {
							echo ' <h2><a href="index.php?modulo=blog&ver='.$item[0][0].'">'.$item[0][1].'</a></h2>';
							echo '<p><i class="fa fa-clock-o"></i> Publicado el: '.$item[0][5].' </p>';
							echo '
								<a href="#">
			                    	<img class="img-responsive img-hover" data-src="img/medios/'.$item[0][6].'" alt="">
			               		</a><br>
								';
							echo '<p>'.$item[0][2].'...</p>';
							echo '<a class="btn btn-primary" href="index.php?modulo=blog&ver='.$item[0][0].'">
									Leer más. <i class="fa fa-angle-right"></i>
								  </a><hr>';
						}
					}else{
						echo "La categoría no existe";
					}
				}else{
					echo "La categoría no existe";
				}

				
			}else{
				$posts = Datos::getpost();
				foreach($posts as $row => $item){
					echo ' <h2><a href="index.php?modulo=blog&ver='.$item['id'].'">'.$item['titulo'].'</a></h2>';
					echo '<p><i class="fa fa-clock-o"></i> Publicado el: '.$item['fecha'].' </p>';
					echo '
						<a href="#">
	                    	<img class="img-responsive img-hover" data-src="img/medios/'.$item['imagen'].'" alt="">
	               		</a><br>
						';
					echo '<p>'.$item['extracto'].'...</p>';
					echo '<a class="btn btn-primary" href="index.php?modulo=blog&ver='.$item['id'].'">
							Leer más. <i class="fa fa-angle-right"></i>
						  </a><hr>';
				}
			}
		}



		function getcatpost(){
			if(isset($_GET['ver'])){
				$id=$_GET['ver'];
				$categorias = Datos::getcatbypost($id);
				foreach ($categorias as $key => $value) {
					echo '
						<div class="col-lg-6">
	                        <ul class="list-unstyled">
	                            <li><a href="index.php?modulo=blog&cat='.$value['identificador'].'"><b>'.$value['categoria'].'</b></a></li>
	                        </ul>
	                   	</div>
					';
				}
				
				}else{
					$categorias = Datos::getcatall();
					foreach ($categorias as $posicion) {
					echo '
						<div class="col-lg-6">
	                        <ul class="list-unstyled">
	                            <li><a href="index.php?modulo=blog&cat='.$posicion["id"].'"><b>'.$posicion['categoria'].'</b></a></li>
	                        </ul>
	                   	</div>
					';
					}
				}
			}
		





	}
 ?>