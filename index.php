<?php 
    require_once('./Controller/Controller.php');


    try
    {
        if(isset($_GET['page']))
        {
            if($_GET['page'] == "home"){
                home();
            }elseif($_GET['page'] == "avis"){
                avis();
            }else{
                throw new Exception("Cette page n'existe pas !");
                // header('location:404.php');
            }
        }else{
            home();
        };
    }
    catch(Exception $e)
   {
        echo $e->getMessage();
   } 

    


?>