<?php 

	class blogcontroller{
		public function menu(){
			if(isset($_GET['ver'])){
				$idpost = $_GET['ver'];
				$post = Datos::getpostbyid($idpost);
				echo '<li>'.$post['titulo'].'</li>';
			}
		}

		public function obtenerpost(){
			if(isset($_GET['ver']) && !isset($_GET['s']) && !isset($_GET['cat'])){
				$idpost = $_GET['ver'];
				$post = Datos::getpostbyid($idpost);
				if($post>1){
					echo '<h1 class="titulo-post">'.$post['titulo'].'</h1>';
					echo '<hr><p><i class="fa fa-clock-o"></i> Publicado el: '.$post['fecha'].'</p><hr>';
					echo '<img class="img-responsive" src="img/medios/'.$post['imagen'].'" alt=""><hr>';
					echo '<p>'.$post['contenido'].'</p>';
				}else{
					echo "¡Ups! Este post no existe...";
				}

			}elseif(isset($_GET['s']) && !isset($_GET['ver']) && !isset($_GET['cat']) ){
				$search = $_GET['s'];
				$resultado = Datos::search($search);
				foreach($resultado as $row => $item){
					echo ' <h2><a href="index.php?modulo=blog&ver='.$item['id'].'">'.$item['titulo'].'</a></h2>';
					echo '<p><i class="fa fa-clock-o"></i> Publicado el: '.$item['fecha'].' </p>';
					echo '
						<a href="blog-post.html">
	                    	<img class="img-responsive img-hover" src="img/medios/'.$item['imagen'].'" alt="">
	               		</a><br>
						';
					echo '<p>'.$item['extracto'].'...</p>';
					echo '<a class="btn btn-primary" href="index.php?modulo=blog&ver='.$item['id'].'">
							Leer más. <i class="fa fa-angle-right"></i>
						  </a><hr>';
				}
			}elseif(isset($_GET['cat']) && !isset($_GET['ver']) && !isset($_GET['s'])){
				echo "Vista de categorias";
			}else{
				$posts = Datos::getpost();
				foreach($posts as $row => $item){
					echo ' <h2><a href="index.php?modulo=blog&ver='.$item['id'].'">'.$item['titulo'].'</a></h2>';
					echo '<p><i class="fa fa-clock-o"></i> Publicado el: '.$item['fecha'].' </p>';
					echo '
						<a href="blog-post.html">
	                    	<img class="img-responsive img-hover" src="img/medios/'.$item['imagen'].'" alt="">
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
				#var_dump($categorias[1]["categoria"]);
				foreach ($categorias as $key => $value) {
					#var_dump($value["categoria"]);
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
					#var_dump($categorias);
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