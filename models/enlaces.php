<?php 
	class Paginas{

		public function enlacesPaginasModel($enlaces){
			if($enlaces== "home" || $enlaces == "panel" || $enlaces == "blog" || $enlaces == "wiki"){
				$module =  "views/modulos/".$enlaces."/index.php";
			}else{
				$module = "views/home.php";
			}

			return $module;
		}
	}
?>