<?php 

    class Manager
    {
        protected function connexion()
        {
            try{

                $pdo = new PDO(
                    // "mysql:host=localhost; port=8080;dbname=boutiquephp", "root", "root",
                    "mysql:host=localhost;dbname=tp_poo", "root", "",
                    array(
                        PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING,
                        PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8' ));

            }
            catch(PDOException $error)
            {
                echo "Connexion impossible à la BDD". $error->getMessage()."<br>";
                echo "Information : " .$error->getFile()."<br>";
                echo "Code : " .$error->getCode()."<br>";
            }
            return $pdo;
        }

    }

    // $manager = new Manager;

    // echo $manager->connexion();


?>