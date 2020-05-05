<?php

	include_once '../api/config/Config.php';
	include '../api/database/Database.php';
	include '../api/pedido/Pedido.php';
	
	$pedido = new Pedido();	
	$listaClientes = $pedido -> listarClientesFieis();
?>
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
	<link rel="stylesheet" type="text/css" href="../layout-web/app-assets/vendors/css/tables/datatable/datatables.min.css">
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
                                <h4 class="card-title">Listagem dos clientes mais fiéis</h4>
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
                                    
									<table class="table table-de mb-0" id="tblClientes">
										<thead>
											<tr>
												<th>ID</th>
												<th>Cliente</th>
												<th>CPF</th>
												<th>Valor Total</th>
												<th>Total de Pedidos</th>
											</tr>
										</thead>
										<tbody>
										<?php
										
											if($listaClientes != QUERY_FAIL && $listaClientes != NO_SUCH_RECORDS) {
												
												$i = 1;
												
												while($cliente = $listaClientes -> fetch()) {
													
													$totalCompras = $cliente['totalCompras'];
													
										?>
											<tr>
												<td><center><?php print $cliente['id']; ?></center></td>
												<td><center><?php print $cliente['nome']; ?></center></td>
												<td><center><?php print $cliente['cpf']; ?></center></td>
												<td><center><?php print "R$ ".number_format($totalCompras, 2, '.', ','); ?></center></td>
												<td><center><?php print $cliente['totalPedidos']; ?></center></td>												
											</tr>
										<?php
													$i++;
												}
											}
										?>
										</tbody>
									</table>
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

	<script src="../layout-web/app-assets/vendors/js/tables/datatable/datatables.min.js"></script>

    <!-- BEGIN: Theme JS-->
    <script src="../layout-web/app-assets/js/core/app-menu.js"></script>
    <script src="../layout-web/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="../layout-web/app-assets/js/scripts/pages/material-app.js"></script>
	<script src="../layout-web/app-assets/js/scripts/tables/datatables/datatable-basic.js"></script>
	<script type="text/javascript" src="../layout-web/js/moment.js"></script>
	
    <!-- END: Page JS-->
	<script>
	
		$(function () {
			
			$('#tblClientes').DataTable({
				'searching': true,
				"autoWidth": false,
				'responsive': false,
				'pageLength': 30,
				"pagingType": "numbers",
				"ordering": false,
				fixedHeader:true,
                "scrollX": true,
                "scrollY": "1000px",
                "scrollCollapse": true,
				"language": {
					"lengthMenu":  "Exibir" + " _MENU_ " + " registros por página",
					"zeroRecords": "Não há clientes cadastrados",
					'processing': "Processando...",
					"search": "Filtro: ",
					"info": "Página " + " _PAGE_ " + " de " + "_PAGES_",
					"infoEmpty": "",
					"infoFiltered": "(" + "Filtrando de " + "_MAX_ " + " registros " + ")"
				}
			})
		});
		
	</script>
</body>
<!-- END: Body-->

</html>