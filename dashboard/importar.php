<?php
	
	include_once '../api/config/Config.php';
	include_once "../api/database/Database.php";
	include_once "../api/pedido/Pedido.php";
	
	$pedido = new Pedido();
	
	$pedido -> importar();
?>