<?php 
	require_once "models/enlaces.php";
    require_once "models/crud.php";
    require_once "controller/controllers.php";
    $validacion = new MvcController();
    $validacion ->sistema();
    /*
	$mvc = new MvcController();
	$mvc -> enlacesPaginasController();
	*/
 ?>