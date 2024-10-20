<?php
	require_once "Cliente.class.php";
	$cliente = new Cliente();
	$conect = $cliente->conexao();
	$retorno = $cliente->buscar_clientes($conect);
	
	echo "<pre>";
	var_dump($retorno);
	echo "</pre>";
?>