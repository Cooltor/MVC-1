<?php ob_start() ?>


   <div class="container">
   <h2>Liste des membres</h2>
   <?php 
    while ($membre = $getMembre->fetch(PDO::FETCH_ASSOC))
    {
    ?>
       <div class="container">
           <ul>
                <li> <?php echo $membre['nom']; ?>  
                    - <?php echo $membre['prenom']; ?>
                    - <?php echo $membre['tel']; ?>
                    - <?php echo $membre['email']; ?>
                </li>
           </ul>
       </div>
    <?php 
    }   
    ?>
   </div>


<?php
    $content = ob_get_clean();
    require_once('./View/base.php');
?>