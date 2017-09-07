<?php 
	class Paginas{
		public function enlacesPaginasModel($enlaces){
			if($enlaces== "home" || $enlaces == "panel" || $enlaces == "blog" || $enlaces == "knowledgebase"){
				$module =  "views/modulos/".$enlaces."/index.php";
			}else{
				$module = "views/modulos/home/index.php";
			}
			return $module;
		}
	}
?>