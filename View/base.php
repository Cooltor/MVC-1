<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> <?php echo $title; ?> MVC</title>
    <link rel="stylesheet" href="./Public/assets/css/style.css">
</head>
<body>

<header>
    <div class="header-container">
        <div class="title">
            <h1>MVC</h1>
        </div>

        <nav>
            <ul>
                <li><a href="?page=home">Membres</a></li>
                <li><a href="?page=avis">Avis</a></li>
            </ul>
        </nav>
    </div>
</header>

    <?php echo $content; ?>

</body>
</html>