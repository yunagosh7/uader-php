<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans|Oswald" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/4fa5ae847e.css">
	<link rel="stylesheet" href="<?php echo RUTA; ?>/css/estilos.css">
	<link rel="icon" href="<?php echo RUTA; ?>imagenes/logo.jpg">
	
	<title>Blog Uader Gchu</title>
</head>
<body>
	<header>
		<div class="contenedor">
			<div class="logo izquierda">
				<p><a href="<?php echo RUTA; ?>" ><img class="logo izquierda" src="<?php echo RUTA; ?>imagenes/logo.jpg" alt=""></a></p>
			</div>

			<div class="derecha">
				<form name="busqueda" method="get" class="buscar" action="<?php echo RUTA; ?>buscar.php">
					<button type="submit" class="icono fa fa-search"></button>
					<input type="text" name="busqueda" placeholder="Buscar">
				</form>
				<nav class="menu">
					<ul>
						<li><a href="https://www.instagram.com/fhaycs_gchu/?hl=es"><i class="fa fa-instagram"></i></a></li>
						<li><a href="https://www.facebook.com/Fhaycs.Uader.SedeGchu"><i class="fa fa-facebook"></i></a></li>
						<li><i class="icono fa fa-envelope" style="color: black"><span> comunicaciongchu@fhaycs.uader.edu.ar<br><span> </span></i></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>