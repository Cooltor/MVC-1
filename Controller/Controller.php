<?php 

    require_once('./Model/UserManager.php');


       function home()
        {
            $user = new UserManager;
            $getMembre = $user->getUser();
            require_once('./View/userView.php');
        }

       function avis()
        {
            $avis = new AvisManager;
            $getAvis = $avis->getAvis();
            require_once('./View/avisView.php');
        }


?>