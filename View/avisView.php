<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tp_poo</title>
    <link rel="stylesheet" href="./Public/assets/css/style.css">
</head>
<body>

<header>
    <div class="header-container">
        <div class="title">
            <h1>TPpoo</h1>
        </div>

        <nav>
            <ul>
                <li><a href="index.php">Membres</a></li>
                <li><a href="avis.php">Avis</a></li>
            </ul>
        </nav>
    </div>
</header>

<?php 


echo "<div class=\"container\">";
echo "<h2>Liste des avis</h2>";
    while ($avis = $getAvis->fetch(PDO::FETCH_ASSOC))
    {
            echo "<div class=\"avis-container\">";
                echo "<ul>";
                        echo "<li><h3>$avis[titre_avis]</h3></li>";
                        echo "<li class!\"avis\">$avis[message]</li>";
                        echo "<li class=\"date\">$avis[date_avis]</li>";
                        echo "<li class=\"note\">Note : $avis[note] / 5</li>";
                echo "</ul>";
            echo "</div>";
    }
echo "</div>";
        
?>

</body>
</html>