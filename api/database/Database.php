<?php
	
define('INSERT_FAIL', '10');
define('UPDATE_FAIL', '11');
define('QUERY_FAIL', '12');
define('DELETE_FAIL', '13');  
define('NO_SUCH_RECORDS', '14');  
define('INSERT_CONFIRMED', 1);
define('UPDATE_CONFIRMED', 1);
	
	/**
	
		Classe responsável por realizar a conexão com a base de dados MySQL através da biblioteca PDO
	*/
	class Database {
		
		//armazena o nome do host
		//armazena o nome do host
		private $host = "localhost";
		//armanzena o nome da base de dados
		private $bd = "ubots";
		//armazena o nome do usuário da base de dados
	    private $user = "root";
		//armazena a password da base de dados
	    private $password = "root";
		//armazena a referência da conexão com a base de dados
		private $connection;
		
		//função que cria a conexão com o banco de dados
		public function createConnection() {
	 
			$this -> connection = null;
	 
			try {
				
				//cria a conexão com a base de dados do MySQL
				$this -> connection = new PDO("mysql:host=" . $this -> host . ";dbname=" . $this -> bd, $this -> user, $this -> password, array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\''));
				$this -> connection -> exec("set names utf8");
			}
			catch(PDOException $excecao) {
				
				//echo "Erro ao realizar a conexão: " . $excecao -> getMessage();
			}
	 
			//retorna o link da conexão
			return $this -> connection;
		}
		
		//função que retorna o último ID de um registro inserido na base de dados
		public function getLastID() {
			
			$id = 0;
	
			//se a conexão for válida
			if($this -> connection != FALSE) {
				
				//obtém o último ID de um registro
				$id = $this -> connection -> lastInsertId();
			}
				
			//retorna o ID
			return $id;
		}
	}
?>
