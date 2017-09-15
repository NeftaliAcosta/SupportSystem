<?php 
	class kbcontroller{
		public $categorias;
		
		function getfathercatcontroller(){
			if(!isset($_GET['subcat']) && !isset($_GET['articulo']) ){
				$cat = Datos::getfathercatmodel();
				echo '<div class="row">';
				foreach ($cat as $key => $value) {
					echo '<div class="col-sm-3">
							<div class="panel panel-default">
	 							<div class="panel-body">
	 								<a href="index.php?modulo=knowledgebase&subcat='.$value['id'].'"><span class="glyphicon '.$value['icon'].'" aria-hidden="true"></span> '.$value["nombre"].' </a>
	 							</div>
	 						</div>
	 					</div>';
				}
				echo '</div>';
			}
			elseif(isset($_GET['subcat'])){
				$subcat=$_GET['subcat'];		
				$mi_clase = new Datos();
				$tabla = get_class_vars(get_class($mi_clase));
				$tabcat= $tabla['tabla']["kbcategorigas"];
				$validar = Datos::validar($tabcat, $subcat, 1);
				if($validar == 1){
					$datos = Datos::getsubcatmodel($subcat);
					echo '<div class="row">';
					foreach ($datos as $key => $value) {
						echo '<div class="col-sm-3">
								<div class="panel panel-default">
		 							<div class="panel-body">
		 								<a href="index.php?modulo=knowledgebase&subcat='.$value['id'].'"><span class="glyphicon '.$value['icon'].'" aria-hidden="true"></span> '.$value["nombre"].' </a>
		 							</div>
		 						</div>
		 					</div>';
					}
					echo '</div>';
					/*Listado de artículos*/
					$articulos = Datos::getkbarticulobycat($subcat);
					foreach ($articulos as $key => $value) {
						$idarticulo = MvcController::encriptarurl($value['id']);
						echo '
							<div class="bs-callout '.$value['clase'].'">
							  <h4 class="kbtitle"><a href="index.php?modulo=knowledgebase&articulo='.urlencode($idarticulo).'">'.$value['nombre'].'</a></h4>
							</div>
								';
					}
				}else{
					echo "¡Ups! Esta categoría no existe...";
				}
			}elseif(isset($_GET['articulo'])){
				$id = MvcController::desencriptarrul($_GET['articulo']);
				$mi_clase = new Datos();
				$tabla = get_class_vars(get_class($mi_clase));
				$tabcat= $tabla['tabla']["kbarticulos"];
				if(is_int(intval($id)) && $id >=1){
					$validar = Datos::validar($tabcat, $id, 2);
					if ($validar ==1){
						$articulo = Datos::getkbarticulobyid($id);
						echo '
							<div class="bs-callout '.$articulo[0]['clase'].'">
							  <h4 class="kbtitle">'.$articulo[0]['nombre'].'</h4>
							  <p><b>Publicado el: '.$articulo[0]['fecha'].'</b></p>
							</div>
							<article>
							'.$articulo[0]['contenido'].'
							</article>

						';
					}

				}else{
					echo '¡Ups! Este tema no existe...';
				}

			}
		}

		public function menu(){
			if(isset($_GET['subcat'])){
				$subcat = $_GET['subcat'];
				$valor =Datos::getcatbyidkb($subcat);
				if ($valor==1){
					$this->breadcrumbsbycat($subcat);
				}
			}elseif(isset($_GET['articulo'])){
				$idarticulo =  MvcController::desencriptarrul($_GET['articulo']);
				$id = (int) $idarticulo;
				if(is_int($id)){
					$mi_clase = new Datos();
					$tabla = get_class_vars(get_class($mi_clase));
					$tabart = $tabla['tabla']["kbarticulos"];
					$validar = Datos::validar($tabart, $id, 1);
					if($validar==0){
						$tab = $tabla['tabla']["kbarticulos"];
						$this->breadcrumbsbyart($id);
					}
				}
			}
		}


		public function breadcrumbsbycat($id){
			$items = Datos::getbreadcrumbscat($id);
			$a=0; 
			$texto ="";
			foreach ($items as $key => $value) {
				$texto = '<li><a href=index.php?modulo=knowledgebase&subcat='.$value['id'].'>'.$value['nombre'].'</a></li>'.$texto;
				++$a;
			}
			echo $texto;
		}
		public function breadcrumbsbyart($id){
			$items = Datos::getbreadcrumbsart($id);
			$a=0; 
			$texto ="";
			foreach ($items as $key => $value) {
				$texto = '<li><a href=index.php?modulo=knowledgebase&subcat='.$value['id'].'>'.$value['nombre'].'</a></li>'.$texto;
				++$a;
			}
			echo $texto;
		}
	}
 ?>