<?php

/**
	Classe responsável por implementar as funções que realizam a manipulação dos clientes
*/

class Cliente {
	
	//função que carrega as informações dos clientes
	public function carregarClientes(){
        
		try {
			
			//cria a conexão com a base de dados
			$database = new Database();	
			$connection = $database -> createConnection();
			
			if($connection != FALSE) {
				
				//define a SQL de busca dos clientes
				$sqlCarregarClientes = "SELECT * FROM clientes ORDER BY nome";
				//prepara e executa a consulta
				$stmtCarregarClientes = $connection -> prepare($sqlCarregarClientes);
				$stmtCarregarClientes -> execute();
				
				//se a consulta obteve resultados
				if($stmtCarregarClientes -> rowCount() > 0) {
					
					//retorna as informações dos clientes
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
	
	//função que carrega as informações de um determinado cliente
	public function carregarCliente($cpf){
        
		try {
			
			//cria a conexão com a base de dados
			$database = new Database();	
			$connection = $database -> createConnection();
			
			if($connection != FALSE) {
				
				//define a SQL de busca dos clientes
				$sqlCarregarCliente = "SELECT * FROM clientes WHERE cpf = ?";
				//prepara e executa a consulta
				$stmtCarregarCliente = $connection -> prepare($sqlCarregarCliente);
				$stmtCarregarCliente -> bindParam(1, $cpf);
				$stmtCarregarCliente -> execute();
				
				//se a consulta obteve resultados
				if($stmtCarregarCliente -> rowCount() == 1) {
					
					//retorna as informações do cliente
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
}