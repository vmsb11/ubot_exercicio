<?php

/**
	Classe responsável por implementar as funções que realizam a manipulação dos pedidos
*/

class Pedido {
	
	public function importar() {
		
		$json = json_decode(file_get_contents("C:\\xampp\\htdocs\\ubots\\dados.json"), true);
		
		//print_r($json);
		
		try {
			
			//cria a conexão com a base de dados
			$database = new Database();	
			$connection = $database -> createConnection();
			
			if($connection != FALSE) {
				
				$i = 0;
				
				for($i = 0; $i < sizeof($json); $i++) {
					
					$pedido = $json[$i];
					$data = $pedido['data'];
					$data = explode("-", $data);
					$data = $data[2]."-".$data[1]."-".$data[0];
					//define a SQL de cadastro do país
					$sqlInserirPedido = "INSERT INTO pedidos (codigo, cliente, data, valorTotal) VALUES(?, ?, ?, ?)";
					//prepara os dados a serem cadastrados
					$stmtInserirPedido = $connection -> prepare($sqlInserirPedido);
					$stmtInserirPedido -> bindParam(1, $pedido['codigo']);
					$stmtInserirPedido -> bindParam(2, $pedido['cliente']);
					$stmtInserirPedido -> bindParam(3, $data);
					$stmtInserirPedido -> bindParam(4, $pedido['valorTotal']);
					//se o cadastro do país for realizado
					if($stmtInserirPedido -> execute()) {

						$itens = $pedido['itens'];
						
						for($j = 0; $j < sizeof($itens); $j++) {
							
							$sqlInserirItensPedido = "INSERT INTO itens (codigo, produto, variedade, pais, categoria, safra, preco) VALUES(?, ?, ?, ?, ?, ?, ?)";
							//prepara os dados a serem cadastrados
							$stmtInserirItensPedido = $connection -> prepare($sqlInserirItensPedido);
							$stmtInserirItensPedido -> bindParam(1, $pedido['codigo']);
							$stmtInserirItensPedido -> bindParam(2, $itens[$j]['produto']);
							$stmtInserirItensPedido -> bindParam(3, $itens[$j]['variedade']);
							$stmtInserirItensPedido -> bindParam(4, $itens[$j]['pais']);
							$stmtInserirItensPedido -> bindParam(5, $itens[$j]['categoria']);
							$stmtInserirItensPedido -> bindParam(6, $itens[$j]['safra']);
							$stmtInserirItensPedido -> bindParam(7, $itens[$j]['preco']);
							$stmtInserirItensPedido -> execute();
							print_r($stmtInserirItensPedido -> errorInfo());
							print "<br>";
						}
					}
					
					print_r($stmtInserirPedido -> errorInfo());
					print_r($pedido);
					print $sqlInserirPedido;
					print "<hr><br>";
					
				}
				
				print $i;
			}
		}
		catch(Exception $ex) {
			
			return QUERY_FAIL;
		}
	}
	
	//função que carrega as informações dos clientes ordenados pelo total da compra
	public function listarClientesOrdenadoPorValorCompra(){
        
		try {
			
			//cria a conexão com a base de dados
			$database = new Database();	
			$connection = $database -> createConnection();
			
			if($connection != FALSE) {
				
				//define a SQL de busca dos clientes
				$sqlCarregarClientes = "SELECT clientes.*, SUM(pedidos.valorTotal) AS totalCompras FROM clientes, pedidos WHERE clientes.cpf = pedidos.cliente GROUP BY clientes.cpf ORDER BY totalCompras DESC";
				//prepara e executa a consulta
				$stmtCarregarClientes = $connection -> prepare($sqlCarregarClientes);
				$stmtCarregarClientes -> execute();
				
				//se a consulta obteve resultados
				if($stmtCarregarClientes -> rowCount() > 0) {
					
					//retorna os resultados
					return $stmtCarregarClientes;
				}
				else {
					
					return NO_SUCH_RECORDS;
				}
			}
			else {
				
				return QUERY_FAIL;
			}
		}
		catch(Exception $ex) {
			
			return QUERY_FAIL;
		}
	}
	
	//função que carrega as informações do maior cliente que fez uma única compra em um dado ano
	public function carregarMaiorClienteCompraUnica($ano){
        
		try {
			
			//cria a conexão com a base de dados
			$database = new Database();	
			$connection = $database -> createConnection();
			
			if($connection != FALSE) {
				
				//define a SQL de busca dos clientes
				$sqlCarregarCliente = "SELECT clientes.*, SUM(pedidos.valorTotal) AS totalCompras, COUNT(pedidos.cliente) AS totalPedidos FROM clientes, pedidos WHERE clientes.cpf = pedidos.cliente AND YEAR(pedidos.data) = ? GROUP BY pedidos.cliente HAVING totalPedidos = ? ORDER BY totalCompras DESC";
				//prepara e executa a consulta
				$stmtCarregarCliente = $connection -> prepare($sqlCarregarCliente);
				$stmtCarregarCliente -> bindParam(1, $ano);
				$stmtCarregarCliente -> bindValue(2, 1);
				$stmtCarregarCliente -> execute();
				
				//se a consulta obteve resultados
				if($stmtCarregarCliente -> rowCount() == 1) {
					
					//retorna os resultados
					return $stmtCarregarCliente -> fetch();
				}
				else {
					
					return NO_SUCH_RECORDS;
				}
			}
			else {
				
				return QUERY_FAIL;
			}
		}
		catch(Exception $ex) {
			
			return QUERY_FAIL;
		}
	}
	
	//função que carrega as informações dos clientes ordenados pela fidelidade
	public function listarClientesFieis(){
        
		try {
			
			//cria a conexão com a base de dados
			$database = new Database();	
			$connection = $database -> createConnection();
			
			if($connection != FALSE) {
				
				//define a SQL de busca dos clientes
				$sqlCarregarClientes = "SELECT clientes.*, SUM(pedidos.valorTotal) AS totalCompras, COUNT(pedidos.codigo) AS totalPedidos FROM clientes, pedidos WHERE clientes.cpf = pedidos.cliente GROUP BY clientes.cpf ORDER BY totalPedidos DESC";
				//prepara e executa a consulta
				$stmtCarregarClientes = $connection -> prepare($sqlCarregarClientes);
				$stmtCarregarClientes -> execute();
				
				//se a consulta obteve resultados
				if($stmtCarregarClientes -> rowCount() > 0) {
					
					//retorna os resultados
					return $stmtCarregarClientes;
				}
				else {
					
					return NO_SUCH_RECORDS;
				}
			}
			else {
				
				return QUERY_FAIL;
			}
		}
		catch(Exception $ex) {
			
			return QUERY_FAIL;
		}
	}
	
	//função que carrega as informações de vinhos a serem sugeridos a um cliente
	//se considera o próprio histórico do cliente para sugerir ordenando os 3 vinhos mais adquiridos
	public function recomendarVinhos($cpf){
        
		try {
			
			//cria a conexão com a base de dados
			$database = new Database();	
			$connection = $database -> createConnection();
			
			if($connection != FALSE) {
				
				//define a SQL de busca dos vinhos
				$sqlCarregarVinhos = "SELECT itens.*, COUNT(itens.produto) AS totalCompras FROM itens, pedidos WHERE pedidos.codigo = itens.codigo AND pedidos.cliente = ? GROUP BY itens.produto ORDER BY totalCompras DESC LIMIT 3";
				//prepara e executa a consulta
				$stmtCarregarVinhos = $connection -> prepare($sqlCarregarVinhos);
				$stmtCarregarVinhos -> bindParam(1, $cpf);
				$stmtCarregarVinhos -> execute();
				
				//se a consulta obteve resultados
				if($stmtCarregarVinhos -> rowCount() > 0) {
					
					//retorna os resultados
					return $stmtCarregarVinhos;
				}
				else {
					
					return NO_SUCH_RECORDS;
				}
			}
			else {
				
				return QUERY_FAIL;
			}
		}
		catch(Exception $ex) {
			
			return QUERY_FAIL;
		}
	}
}