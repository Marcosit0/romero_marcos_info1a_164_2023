#  Modul 164 - Marcos Romero - Gestionnaire de dépenses 

Il s'agit d'un géstionnaire de dépense.

Avec l'utilisation un système CRUD (Create Read Update Delete) complet sur 3 tables dont une table intermédiaire pour l'association des dépense à une catégorie.

# Avertissement
N'ayant pas réussi à finaliser le code, on peut pas ajouter des dépense depuis le site web. C'est pourquoi, il vous faudra avoir un serveur MySql installé afin de modifier depuis celui-ci les dépenses par catégorie.

# Quels sont les prérequis pour faire fonctionner mon projet ?

Un serveur MySql doit être installé

- Laragon (ce que j'utilise) : https://laragon.org/download/index.html

- ou XAMPP : https://www.apachefriends.org/fr/download.html

- ou UWAMP : https://www.uwamp.com/fr/?page=download

- ou MAMP : https://www.mamp.info/en/downloads/

Python doit être installé.

- ATTENTION : Cochez la case pour que le « PATH » intègre le programme Python

- Une fois la "case à cocher" du PATH cochée, il faut choisir d'installer

- Un peu avant la fin du processus d'installation, cliquer sur « Disabled length limit » et cliquer sur « CLOSE »

- Le test de Python se fait après avec le programme "PyCharm"

Installateur "GIT"

- https://gitforwindows.org/

- Le test de "GIT" se fait dans le programme "PyCharm"

# Configuration de PyCharm

- Il faut installer "PyCharm" (communauté) et utiliser la même version IDE pour faire fonctionner le projet.

- Lors de l'installation, il faut cocher toutes les options ASSOCIATIONS, ADD PATH, etc.

- Ouvrir "PyCharm" pour la première fois pour le configurer. Choisir le bouton « Nouveau projet »

- Changer le répertoire pour ce nouveau projet, il faut créer un nouveau répertoire "vide" sur votre disque en local.

- Il est important d'avoir sélectionné le répertoire que vous venez de créer car "PyCharm" va automatiquement créer un environnement virtuel (venv) dans ce 
répertoire

- Menu : Fichier->Paramètres->Editeur->Général->Importation automatique (rubrique Python) cocher "Afficher l'info-bulle d'importation automatique"

# PyCharm vient d'ouvrir une fenêtre avec le contenu de "main.py" pour configurer les actions "UNDO" et "REDO"

- Sélectionnez tout le texte avec "CTRL-A" puis "CTRL-X" (Couper), puis "CTL-Z" (UNDO) et faites un REDO "CTRL-Y" et "PyCharm" va vous demander de choisir l'action du "CTRL-Y" raccourci pour faire un "REDO".

# Guide pour faire fonctionner mon projet

# Démarrez le serveur MySql (Laragon(heidi.sql), uwamp ou xamp ou mamp, etc.))

- Dans « PyCharm », importateur MA BD à partir du fichier DUMP

- Ouvrir le fichier APP_DEPENSE_164/database/1_ImportationDumpSql.py

- Cliquer avec le bouton droit sur l'onglet de ce fichier et choisir "run" (CTRL-MAJ-F10)

# En cas d'erreur /!\

- Ouvrir le fichier .env à la racine du projet, vérifier les indications de connexion pour la bd.

# Test simple de la connexion à la BD

- Ouvrir le fichier APP_DEPENSE_164/database/2_test_connection_bd.py

- Cliquer avec le bouton droit sur l'onglet de ce fichier et choisir "run" (CTRL-MAJ-F10)

# Démarrer le microframework FLASK

- Dans le répertoire racine du projet, ouvrez le fichier run_mon_app.py

- Cliquer avec le bouton droit sur l'onglet de ce fichier et choisir "run" (CTRL-MAJ-F10)

- Dans la console du « run », il doit y avoir un lien à cliquer de cette forme :

-   Exécuté sur http://127.0.0.1:5005

- Cliquer dessus afin d'ouvrir dans votre navigateur mon projet
