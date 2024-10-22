<nav class="navbar" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
        <a class="navbar-item" href="<?php echo APP_URL; ?>dashboard/">
        <img src="<?php echo APP_URL; ?>app/views/img/logofhaycs.png" alt="" width="400"
        height="20">

        </a>

        <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
        </a>
    </div>

    <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
            
            <div class="navbar-item has-dropdown is-hoverable">
                <a class="navbar-link">Semiotica</a>

                <div class="navbar-dropdown">
                    <a class="navbar-item" href="<?php echo APP_URL; ?>postNew/">Nuevo Post</a>
                    <a class="navbar-item" href="<?php echo APP_URL; ?>postList/">Lista</a>
                </div>
            </div>
        </div>

        <div class="navbar-end">
            <div class="navbar-item">
                <div class="buttons">
                    <h3>Administrador</h3>
                    <a class="button is-primary is-rounded" href="<?php echo APP_URL; ?>userUpdate/">Mi Cuenta</a>
                    <a class="button is-link is-rounded" href="<?php echo APP_URL; ?>logOut/">Salir</a>
                </div>
            </div>
        </div>
    </div>
</nav>