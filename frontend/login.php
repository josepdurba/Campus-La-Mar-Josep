<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Acceso | Campus La Mar</title>
    <link rel="stylesheet" href="css/styles.css">
</head>

<body>

    <?php include 'components/header.php'; ?>

    <main class="login-container">
        <div class="login-card">
            <h1>ACCESO AL CAMPUS</h1>
            <p>Introduce tus datos para continuar.</p>

            <form id="loginForm" novalidate>
                <label for="email">Correo electrónico</label>
                <input type="email" id="email" name="email" placeholder="nombre@ejemplo.com" required>

                <label for="password">Contraseña</label>
                <input type="password" id="password" name="password" placeholder="Introduce tu contraseña" required>

                <button type="submit" class="btn">Iniciar sesión</button>

                <p id="loginMessage"></p>
            </form>
        </div>
    </main>

    <?php include 'components/footer.php'; ?>

    <script src="js/script.js"></script>
</body>

</html>