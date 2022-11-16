<?php 

    require_once('Manager.php');   

    class UserManager extends Manager
    {
        public function getUser()
        {
            $bdd = $this->connexion();
            $req = $bdd->query("SELECT * FROM membre");
            // $membre = $req->fetch(PDO::FETCH_ASSOC);
            return $req;
        }
    }

    class AvisManager extends Manager
    {
        public function getAvis()
        {
            $bdd = $this->connexion();
            $req = $bdd->query("SELECT * FROM avis");
            return $req;
        }
    }

?>