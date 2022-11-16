# Définition MVC

* Le modèle MVC signifie  (Model - View - Controller)

    - Model -> S'occupe des échanges avec la BDD (req SQL)
    - View -> Ce qui sera affiché à l'user
    - Controller -> S'occupe des échanges le Model et la Vue 

    Le fichier index.php sera le seul fichier à la racine de mon site
    Dans le dossier Public on met toutes les assets (IMG, JS, CSS...)
    Dans le dossier Vendor, je mets tout ce qui vient des librairies externes (BootStrap, JQuery, etc...)

## A FAIRE

    1 - Créer une BDD tp_poo avec les tables :
        Membre(
            id => PK AI 5,
            nom => Varchar 100,
            prenom => Varchar 150,
            tel => Varchar 10,
            email => Varchar 150
        )

        Avis(
            id PK AI 5,
            message -> text,
            date_avis -> datetime (CURRENT_TIME_STAMP),
            note -> INT 1
        )


## STEPS

### Faire la connexion à la BDD

    - Créer un fichier Manager.php dans le MODEL
        à l'intérieur créer une classe Manager qui aura une méthode protected. Cette méthode fera la connexion à la BDD et retourner une propriété qui contient la connexion à la BDD.
        Utliser les try catch.

    - Créer un fichier UserManager.php dans le MODEL
        Ce fichier aura une classe UserManager qui hérite de la classe Manager.
        Une méthode public getUser() qui récupère tous les Users de la BDD et retourne le résultat dans un attribut 

### Dans le controller
    - Créer un fichier Controller.php.
        A l'intérieur créer une fonction home() qui instancie un UserManager et qui récupère tous les user de l'objet instancier dans une variable . puis fait appel au fichier userView.php

### Dans la view

    - Créer un fichier userView.php qui va afficher la liste des utilisateurs 


### Dans le fichier index.php

    - Faire appel à la fonction home();
