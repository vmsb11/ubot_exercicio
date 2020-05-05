<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<!-- BEGIN: Head-->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Dashboard de acompanhamento dos casos da pandemia de COVID-19 no mundo">
    <meta name="keywords" content="admin template, modern admin template, dashboard template, flat admin template, responsive admin template, web app, crypto dashboard, bitcoin dashboard">
    <meta name="author" content="PIXINVENT">
    <title>Dashboard</title>
    <link rel="apple-touch-icon" href="../layout-web/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="../layout-web/images/favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i%7CQuicksand:300,400,500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="../layout-web/app-assets/vendors/css/material-vendors.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="../layout-web/app-assets/css/material.css">
    <link rel="stylesheet" type="text/css" href="../layout-web/app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="../layout-web/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="../layout-web/app-assets/css/material-extended.css">
    <link rel="stylesheet" type="text/css" href="../layout-web/app-assets/css/material-colors.css">
    <!-- END: Theme CSS-->

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="../layout-web/app-assets/css/core/menu/menu-types/material-vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="../layout-web/app-assets/css/pages/hospital.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../layout-web/assets/css/style.css">
    <!-- END: Custom CSS-->
</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu material-vertical-layout material-layout 2-columns   fixed-navbar" data-open="click" data-menu="vertical-menu" data-col="2-columns">

	<?php 
	
		include 'menu.php';
	?>

    <!-- END: Main Menu-->
    <!-- BEGIN: Content-->
    <div class="app-content content">
        
		<div class="content-header row">		
        </div>
        <div class="content-wrapper">
            <div class="content-body">
                
				<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Considerações sobre o meu desenvolvimento</h4>
                                <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                                <div class="heading-elements">
                                    <ul class="list-inline mb-0">
                                        <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                        <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                        <li><a data-action="close"><i class="ft-x"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card-content collapse show">
                                <div class="card-body">
                                    <p align="left">
										<b>1) </b> Criei uma base de dados com 3 entidades (clientes contendo as informações dos clientes, pedidos com as compras realizadas e itens que registra os vinhos adquiridos)
										<br>
										<b>2) </b> Criei classes em PHP que realizam a conexão com a base de dados e manipulação das tabelas clientes e pedidos
										<br>
										<b>3) </b> Foi criado um método na classe Pedidos para cada item do exercício
										<br>
										<b>4) </b> Com a utilização do Bootstrap e um template que tenho, desenvolvi todo o layout das páginas
										<br>
										<b>5) </b> Para exibição dos registros em tabelas foi utilizado a biblioteca Datatables desenvolvida em Java Script com JQuery, permitindo assim filtrar informações em tempo real
										<br>
										<b>6) </b> Para solucionar o exercício 4 foi considerado apenas o histórico de compras listando no máximo 3 vinhos, o ideal como melhoria seria desenvolver algum mecanismo de inteligência artificial
										<br>
										<b>7) </b> Como melhoria futura, se pode aplicar normalização na base de dados e criar uma entidade chamada Produtos para eliminar duplicidade das informações, não optei por criar por demanda de tempo mas esta melhoria seria a mais ideal para ser aplicada no futuro
										<br>
										<b>8) </b> O script de criação da base de dados está na pasta db do código fonte
										<br>
										<b>9) </b> Dúvidas: podem me enviar pelo Whatsapp (12) 996180491
									</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END: Content-->

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <?php include 'rodape.php'; ?>

    <!-- BEGIN: Vendor JS-->
    <script src="../layout-web/app-assets/vendors/js/material-vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="../layout-web/app-assets/js/core/app-menu.js"></script>
    <script src="../layout-web/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="../layout-web/app-assets/js/scripts/pages/material-app.js"></script>
	<script type="text/javascript" src="../layout-web/js/moment.js"></script>
	
    <!-- END: Page JS-->
</body>
<!-- END: Body-->

</html>