<div class="container is-fluid mb-6">
	<h1 class="title">Nuevo Post</h1>
	<h2 class="subtitle">Llena los campos para subir un nuevo post</h2>
</div>

<div class="container pb-6 pt-6">

	<form class="FormularioAjax" action="<?php echo APP_URL;?>app/ajax/institutoAjax.php" method="POST" autocomplete="off" enctype="multipart/form-data" >

		<input type="hidden" name="modulo_instituto" value="registrar">

		<div class="columns">
		  	<div class="column">
		    	<div class="control">
					<label>Autor</label>
				  	<input class="input" type="text" name="autor" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{3,40}" maxlength="40" required >
				</div>
		  	</div>
		</div>
		<div class="columns">
		  	<div class="column">
		    	<div class="control">
					<label>Titulo</label>
				  	<input class="input" type="text" name="titulo" maxlength="70" >
				</div>
		  	</div>
		  	<div class="column">
		    	<div class="control">
					<label>Categoria</label>
					<div class="control has-icons-left">
						<div class="select">
							<select>
							<option selected>Seleccione una categoria</option>
							<option>Semiotica</option>
							<option>Teoria y critica Teatral</option>
							</select>
						</div>
						<span class="icon is-medium is-left">
							<i class="fas fa-globe"></i>
						</span>
					</div>
				</div>
		  	</div>
		</div>
		<div class="columns">
		  	<div class="column">
		    	<div class="control">
					<label>Texto</label>
					<textarea class="textarea" name="texto" placeholder="texto..."></textarea>				</div>
		  	</div>
		  	<div class="column">
		    	<div class="control">
					<label>Colaboradores</label>
					<input class="input" type="text" name="colaboradores" maxlength="70" >
				</div>
		  	</div>
		</div>
		<div class="columns">
		  	<div class="column">
		    	<div class="control">
					<label>Imagen</label>
					<div class="file has-name">
						<label class="file-label">
							<input class="file-input" type="file" name="resume" />
							<span class="file-cta">
							<span class="file-icon">
								<i class="fas fa-upload"></i>
							</span>
							<span class="file-label"> Subir Foto</span>
							</span>
							<span class="file-name">...</span>
						</label>
					</div>
		  		</div>
			</div>
			<div class="column">
		    	<div class="control">
					<label>Dia de Creacion</label>
					<input class="input" type="date" name="fecha" maxlength="70" >
				</div>
		  	</div>
		</div>
	
		<p class="has-text-centered">
			<button type="reset" class="button is-link is-light is-rounded">Limpiar</button>
			<button type="submit" class="button is-info is-rounded">Guardar</button>
		</p>
	</form>
</div>