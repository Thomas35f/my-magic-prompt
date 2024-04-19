#!/bin/bash
source quit.sh

# Interprète la commande rentrée 
cmd() {
  cmd=$1
  argv=$*

  case "${cmd}" in
    quit | exit ) quit;;
    help ) help_message;;
    ls ) list_files;;
    rm ) remove_file "${argv[@]:1}";;
    rmd | rmdir ) remove_directory "${argv[@]:1}";;
    about ) about_message;;
    version | --v | vers ) version_message;;
    age ) check_age;;
    profil ) display_profile;;
    passw ) change_password;;
    cd ) change_directory "${argv[@]:1}";;
    pwd ) present_working_directory;;
    hour ) display_hour;;
    * ) unknown_command;;
  esac
}

# Fonctions liées aux commandes rentrées 
help_message() {
  echo "Commandes disponibles :"
  echo "help     : Affiche les commandes disponibles"
  echo "ls       : Liste les fichiers et dossiers"
  echo "rm       : Supprime un fichier"
  echo "rmd|rmdir: Supprime un dossier"
  echo "about    : Affiche une description du programme"
  echo "version  : Affiche la version du prompt"
  echo "age      : Demande votre âge et vous dit si vous êtes majeur ou mineur"
  echo "quit     : Quitte le prompt"
  echo "profil   : Affiche toutes les informations vous concernant"
  echo "passw    : Change le mot de passe avec une demande de confirmation"
  echo "cd       : Aller dans un dossier ou revenir au dossier précédent"
  echo "pwd      : Affiche le répertoire courant"
  echo "hour     : Affiche l'heure actuelle"
  echo "*        : Commande inconnue"
  echo "httpget  : Télécharge le code source HTML d'une page web et l'enregistre dans un fichier spécifié"
  echo "smtp     : Envoie un mail avec une adresse, un sujet et le corps du mail"
  echo "open     : Ouvre un fichier dans l'éditeur VIM même s'il n'existe pas"
}

list_files() {
  ls -a
}

remove_file() {
  rm "$1"
}

remove_directory() {
  rm -r "$1"
}

about_message() {
  echo "Ce programme est un prompt personnalisé avec différentes fonctionnalités."
}

version_message() {
  echo "Version 1.0"
}

check_age() {
  read -p "Entrez votre âge : " age
  if [ "$age" -ge 18 ]; then
    echo "Vous êtes majeur."
  else
    echo "Vous êtes mineur."
  fi
}

display_profile() {
  echo "First Name: [Your First Name]"
  echo "Last Name: [Your Last Name]"
  echo "Age: [Your Age]"
  echo "Email: [Your Email]"
}

change_password() {
  read -s -p "Entrez votre nouveau mot de passe : " new_password
  echo
  read -s -p "Confirmez votre nouveau mot de passe : " confirm_password
  echo
  if [ "$new_password" = "$confirm_password" ]; then
    echo "Mot de passe changé avec succès."
    # WIP
  else
    echo "Les mots de passe ne correspondent pas. Veuillez réessayer."
  fi
}

change_directory() {
  cd "$1"
}

present_working_directory() {
  pwd
}

display_hour() {
  date +%H:%M:%S
}

unknown_command() {
  echo "Commande inconnue. Tapez 'help' pour afficher les commandes disponibles."
}

main() {
  lineCount=1

  while [ 1 ]; do
    date=$(date +%H:%M)
    echo -ne "${date} - [\033[31m${lineCount}\033[m] - \033[33mXzen\033[m ~ ☠️ ~ "
    read -a command

    cmd "${command[@]}"
    lineCount=$(($lineCount+1))
  done
}

main
