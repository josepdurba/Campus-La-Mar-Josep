<?php
$pageTitle = "Campus La Mar";
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $pageTitle ?></title>
    <link rel="stylesheet" href="css/styles.css">
</head>

<body>

    <?php include 'components/header.php'; ?>

    <main>

        <section class="cursos" id="cursos">
            <h2>NUESTRA OFERTA FORMATIVA</h2>
            <p>Descubre las oportunidades de formación de Campus La Mar.</p>

            <div class="course-grid">
                <article class="course-card">
                    <h3>Desarrollo Web</h3>
                    <p>Aprende a crear aplicaciones y páginas web modernas.</p>
                </article>

                <article class="course-card">
                    <h3>Administración de Sistemas</h3>
                    <p>Conoce la gestión y administración de sistemas informáticos.</p>
                </article>

                <article class="course-card">
                    <h3>Formación Profesional</h3>
                    <p>Desarrolla tus habilidades y prepárate para el futuro.</p>
                </article>
            </div>
        </section>

        <section class="about" id="nosotros">
            <h2>SOBRE CAMPUS LA MAR</h2>
            <p>
                Somos un espacio dedicado a la formación, el aprendizaje
                y el desarrollo de nuevas oportunidades académicas.
            </p>
        </section>


        <section class="cursos">
            <h2>FORMACIÓN Y APRENDIZAJE</h2>
            <p>Descubre nuestra oferta formativa y desarrolla tu futuro.</p>
        </section>
    </main>

    <?php include 'components/footer.php'; ?>

    <script src="js/script.js"></script>
</body>

</html>