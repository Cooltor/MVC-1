<?php
$title = "Avis";
ob_start()
?>


    <div class="container">
    <h2>Liste des avis</h2>

        <?php  while ($avis = $getAvis->fetch(PDO::FETCH_ASSOC))
            { ?>
        
                    <div class="avis-container">
                        <ul>
                                <li><h3> <?php echo $avis['titre_avis'] ?></h3></li>
                                <li class="avis"> <?php echo $avis['message'] ?></li>
                                <li class="date"> <?php echo $avis['date_avis'] ?></li>
                                <li class="note">Note : <?php echo $avis['note'] ?> / 5</li>
                        </ul>
                    </div>
        <?php } ?>
    </div>
        

<?php
    $content = ob_get_clean();
    require_once('./View/base.php');
?>