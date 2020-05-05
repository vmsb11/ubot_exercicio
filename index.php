<?php

	@session_start();
	
	@$_SESSION['IDIOMA_CONFIGURADO'] = 'PT';
	
	print '<script>';
	print 'location.href="dashboard/index.php";';
	print '</script>';
?>