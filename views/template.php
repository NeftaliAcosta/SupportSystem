<?php 
	require_once "models/enlaces.php";
    require_once "models/crud.php";
    require_once "controller/controllers.php";
	$mvc = new MvcController();
	$mvc -> enlacesPaginasController();

 ?>