# Mon Magic Prompt

Projet scolaire MDS M2 DEVFS. Le but est de créer un script Bash interactif offrant différentes fonctionnalités pour gérer les fichiers et dossiers, ainsi que des outils supplémentaires tels que la gestion du profil utilisateur, le changement de mot de passe, etc...

## Prérequis

- Linux ou macOS
- Bash

## Installation

1. Clonez le dépôt

2. Accédez au répertoire du projet :

    ```bash
    cd mon-magic-prompt
    ```

## Utilisation

1. Exécutez le script principal `main.sh` :

    ```bash
    ./main.sh
    ```

2. Le prompt interactif s'affichera. Tapez `help` pour voir la liste des commandes disponibles.

## Commandes disponibles

- `help`: Affiche les commandes disponibles.
- `ls`: Liste les fichiers et dossiers.
- `rm`: Supprime un fichier.
- `rmd|rmdir`: Supprime un dossier.
- `about`: Affiche une description du programme.
- `version`: Affiche la version du prompt.
- `age`: Demande l'âge de l'utilisateur et indique s'il est majeur ou mineur.
- `quit`: Quitte le prompt.
- `profil`: Affiche les informations sur l'utilisateur.
- `passw`: Change le mot de passe avec une demande de confirmation.
- `cd`: Change le répertoire courant.
- `pwd`: Affiche le répertoire courant.
- `hour`: Affiche l'heure actuelle.
- `*`: Commande inconnue.