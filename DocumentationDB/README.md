## Installation et configuration du projet

Rappel : Le sujet est [ici](https://docs.google.com/document/d/1MxM8H3PVpFOUG4-buM8BLXRv18PIHKrjf76EBzmINZs/edit?usp=sharing)


## Lien du site hébergé

Le site est trouvable au lien suivant : https://borghesi-sae203.mmi-limoges.fr/
Itération la plus haute atteinte : Itération 10 (finie).


## Requêtes SQL utilisées

- getAllMovies() : 
    - J'ai utilisé cette fonction pour que le navigateur envoie à la base de données une requête servant à récuperer toutes les données de chacun des films de la table Movie. Il n'y a pas de paramètre puisque tous les films de la BDD et leurs paramètres sont ciblés implicitement.

- getMovieDetail($id) :
    - J'ai utilisé cette fonction pour que le navigateur envoie à la base de données une requête servant à récuperer toutes les données d'un seul film à la fois depuis la table Movie. Il y a le paramètre "$id" puisque je souhaite cibler les films par ce qui les définit dans la BDD: leur ID (dans le sens ou c'est la PRIMARY KEY et donc on peut les identifier comme ça assez facilement).

- newMovie($name, $director, $year, $length, $desc, $cat, $image, $url, $age) : 
    - J'ai utilisé cette fonction pour que le navigateur envoie à la base de données une requête servant à ajouter un film dans la table Movie. Toutes les données nécessaires à enregistrer un film sont en paramètre puisque je souhaite ajouter toutes ces données à la BDD afin de pouvoir, plus tard, faire afficher ledit film. Seul l'ID n'est pas mentionné puisqu'il se définit seul, il est en AUTO_INCREMENT.

- getAllCategories() :
    - J'ai utilisé cette fonction pour que le navigateur envoie à la base de données une requête servant à récuperer toutes les données de la table Category. Il n'y a pas de paramètre puisque toutes les catégories de la BDD et leurs IDs sont ciblés implicitement.

- getMoviesFromCategory($category_id, $age = 0) :
    - J'ai utilisé cette fonction pour que le navigateur envoie à la base de données une requête servant à récuperer toutes les données de la table Movie. Ces données vont ensuite me servir à afficher les films selon leur catégorie dans des sections, d'où le paramètre "category_id". L'age est aussi pris en compte puisque cet affichage prend aussi en compte la limitation d'âge définie dans la table Movie.

- addProfile ($name, $avatar, $age) :
    - J'ai utilisé cette fonction pour que le navigateur envoie à la base de données une requête servant à ajouter un profil dans la table Profile. Toutes les données nécessaires à enregistrer un profil sont en paramètre puisque je souhaite ajouter toutes ces données à la BDD afin de pouvoir, plus tard, faire afficher ledit profil ou m'en servir. Seul l'ID n'est pas mentionné puisqu'il se définit seul, il est en AUTO_INCREMENT.

- editProfile ($id, $name, $avatar, $age) :
    - J'ai utilisé cette fonction pour que le navigateur envoie à la base de données une requête servant à modifier un profil dans la table Profile. Toutes les données nécessaires à créer un profil sont en paramètre puisque je souhaite potentiellement modifier celles-ci. L'ID est ici mentionné mais on ne peut pas le modifier, il est là pour qu'on sache de quel profil il est question.

- getAllProfiles() :
    - J'ai utilisé cette fonction pour que le navigateur envoie à la base de données une requête servant à récuperer toutes les données de la table Profile. Il n'y a pas de paramètre puisque tous les profils de la BDD et leurs paramètres sont ciblés implicitement.

- addFavorite($profile_id, $movie_id) :
    - J'ai utilisé cette fonction pour que le navigateur envoie à la base de données une requête servant à ajouter un film favori dans la table Favorite. Toutes les données nécessaires à enregistrer un film en favori sont en paramètre puisque je souhaite ajouter toutes ces données à la BDD afin de pouvoir, plus tard, faire afficher ledit film favori ou m'en servir. Les paramètres sont ciblés puisque c'est l'ID du profil qui a ajouté le film en favori (son ID également par conséquent).

- removeFavorite($profile_id, $movie_id) :
    - J'ai utilisé cette fonction pour que le navigateur envoie à la base de données une requête servant à retirer un film favori de la table Favorite. Toutes les données nécessaires à enregistrer un film en favori sont en paramètre puisque je souhaite pouvoir supprimer toutes ces données à la BDD afin de pouvoir, plus tard, enlever l'affichage dudit film favori. Ces paramètres sont ciblés puisqu'il est question d'identifier l'ID du profil qui a ajouté le film en favori (et l'ID du film également par conséquent).

- getFavoritesByProfile($profile_id) :
    - J'ai utilisé cette fonction pour que le navigateur envoie à la base de données une requête servant à récuperer toutes les données de la table Favorite. Ces données vont ensuite me servir à afficher les films mis en favoris par un profil désigné, d'où le paramètre "profile_id". L'ID des films n'est pas mentionné puisqu'on cherche à récupérer tous les films et pas un en particulier.


## Éventuelles modifications de la base de données ?
Par rapport à la base de données, les seules modifications qui ont été effectuées sur celle-ci sont des ajouts de tables, 2 spécifiquement : la table Profile et la table Favorite.


## Justification des données des tables SQL
- Table Movie :
    - id (int11) -> Clé primaire de la table, qui permet d'identifier individuellement chaque film (en nombres entiers), elle se définit automatiquement (AUTO_INCREMENT)
    - name (varchar255) -> Identifier le nom du film (en lettres)
    - director (varchar255) -> Identifier le ou les producteurs du film (en lettres)
    - year (int11) -> Identifier l'année de sortie du film (en nombres entiers)
    - length (int11) -> Identifier la durée, en minutes, du film (en nombres entiers)
    - description (text) -> Rentrer le synopsis du film (sans limite de caractères)
    - id_category (int11) -> Clé étrangère de la table, qui se rapporte à la table Category, pour identifier la catégorie du film (en nombres entiers)
    - image (varchar255) -> Identifier le lien de l'affiche du film dans le serveur (en lettres)
    - url (varchar255) -> Identifier l'url de la bande annonce du film sur internet (en lettres)
    - min_age (int11) -> Identifier l'age minimum auquel on a le droit de regarder le film (en nombres entiers)

- Table Category :
    - id (int11) -> Clé primaire de la table, qui permet d'identifier individuellement chaque catégorie (en nombres entiers), elle se définit automatiquement (AUTO_INCREMENT)
    - name (varchar255) -> Identifier le nom de la catégorie (en lettres)

- Table Profile :
    - id (int11) -> Clé primaire de la table, qui permet d'identifier individuellement chaque profil (en nombres entiers), elle se définit automatiquement (AUTO_INCREMENT)
    - name (varchar255) -> Identifier le nom du film (en lettres)
    avatar (varchar255) -> Identifier le lien de l'avatar du profil dans le serveur (en lettres)
    - age (int11) -> Identifier l'age du profil (en nombres entiers)

- Table Favorite :
    - id_profile (int11) -> Clé étrangère de la table, qui se rapporte à la table Profile, pour identifier l'ID du du profil qui met le film en favori (en nombres entiers)
    - id_movie (int11) -> Clé étrangère de la table, qui se rapporte à la table Movie, pour identifier l'ID du film qui est mis en favori


## Vue looping
![alt text](looping.HEIC)


## Explication des cardinalités
- Cardinalité Movie -> Category : 1;1
    - Un film peut être caractérisé par minimum et maximum une seule catégorie.

- Cardinalité Category -> Movie : 0;n
    - Un catégorie peut contenir au minimum 0 film, et au maximum une infinité de films (un nombre non défini donc on l'appelle n).

- Cardinalité Movie -> Profile via AIMER (mettre en favori) : 0;n
    - Un film peut être mis en favori par au minimum 0 profil, et au maximum une infinité de profils (un nombre non défini donc on l'appelle n).

- Cardinalité Profile -> Movie via AIMER (mettre en favori) : 0;n
    - Un profil peut mettre en favori au minimum 0 film, et au maximum un nombre infini de films (un nombre non défini donc on l'appelle n).


## Parenthèse Lighthouse
Les captures d'écran des analyses Lighthouse sont dans le dossier /Lighthouse.

La plupart des pages sont très optimisées niveau performance, pratiques et SEO, un peu moins du côté accessibilité cependant.
Je pourrais améliorer les alts des images et mon imbrication css.
Seule la page d'accueil a de mauvaises performances, surement dû au fait qu'elle doive charger tout le code de la SAé.


## Précisions

La seule chose qui m'a posé problème durant cette SAé est le temps (et la Javascript aussi mais ce n'est pas le sujet). Par manque de temps, je n'ai pas pu rajouter tant de films que ça à la BDD, ni même pu aller plus loin que l'itération 10 (mon manque d'expérience joue aussi dans ce problème).