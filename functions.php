<?php 
// , 'dbblog_lx7d_user', 'AMi0Exeeys15UMt1w4KMdQSK1zZtWylE'
	function conexion($bd_config){
		try {
			$host = 'dpg-csuevdtumphs73b9fpdg-a.oregon-postgres.render.com';
			$dbname = 'dbblog_lx7d';
			$user = 'dbblog_lx7d_user';
			$password = 'AMi0Exeeys15UMt1w4KMdQSK1zZtWylE';
			$port = 5432; // Puerto predeterminado para PostgreSQL
	
			// Configuración de la cadena de conexión
			$dsn = "pgsql:host=$host;port=$port;dbname=$dbname";
	
			// Crear la conexión PDO
			$conexion = new PDO($dsn, $user, $password);
			return $conexion;
		} catch (PDOException $e) {
			return $e;
			// return false;
		}
	}

	function limpiarDatos($datos){
		$datos = trim($datos); 
		$datos = stripcslashes($datos); 
		$datos = htmlspecialchars($datos);

		return $datos;
	}

	function pagina_actual(){
		return isset($_GET['p']) ? (int)$_GET['p'] : 1;
	}

	function obtener_post($post_por_pagina, $conexion) {
    $inicio = (pagina_actual() > 1) ? pagina_actual() * $post_por_pagina - $post_por_pagina : 0;
    $sentencia = $conexion->prepare("SELECT * FROM articulos LIMIT :post_por_pagina OFFSET :inicio");
    $sentencia->bindParam(':post_por_pagina', $post_por_pagina, PDO::PARAM_INT);
    $sentencia->bindParam(':inicio', $inicio, PDO::PARAM_INT);
    $sentencia->execute();
    return $sentencia->fetchAll();
}

function numero_paginas($post_por_pagina, $conexion) {
	// En PostgreSQL no existe FOUND_ROWS(); se usa COUNT() en su lugar.
	$query = $conexion->prepare('SELECT COUNT(*) as total FROM articulos');
	$query->execute();
	$total_post = $query->fetch()['total'];

	$numero_paginas = ceil($total_post / $post_por_pagina);
	return $numero_paginas;
}

function id_articulo($id) {
	// Convertir el ID a entero para evitar errores de tipo o inyección.
	return (int) limpiarDatos($id);
}

function obtener_post_por_id($conexion, $id) {
	// Usar parámetros preparados para evitar inyección de SQL.
	$query = $conexion->prepare('SELECT * FROM articulos WHERE id = :id LIMIT 1');
	$query->bindValue(':id', (int)$id, PDO::PARAM_INT); // Aseguramos que el ID sea un entero.
	$query->execute();

	$resultado = $query->fetchAll();
	return ($resultado) ? $resultado : false;
}

	function fecha($fecha){
		$timestamp = strtotime($fecha);
		$meses = ['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio',
				  'Agosto','Septiembre','Octubre','Noviembre','Diciembre'];

		$dia = date('d', $timestamp);
		$mes = date('m', $timestamp) - 1;
		$year = date('Y',$timestamp);

		$fecha = "$dia de " . $meses[$mes] . " del $year";
		return $fecha;
	}

	function comprobarSession(){
		if (!isset($_SESSION['admin'])) {
			header('Location: ' .  RUTA);
		}
	}

 ?>