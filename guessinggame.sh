#!/bin/bash
# File: guessinggame.sh

# Fonction pour demander à l'utilisateur de deviner le nombre de fichiers
guess_files() {
  # Récupérer le nombre de fichiers dans le répertoire actuel
  local correct_number=$(ls -1 | wc -l)
  local guess=0

  # Boucle jusqu'à ce que l'utilisateur devine correctement
  while [[ $guess -ne $correct_number ]]; do
    echo "Devinez le nombre de fichiers dans le répertoire actuel :"
    read guess

    if [[ $guess -lt $correct_number ]]; then
      echo "Trop bas, essayez encore !"
    elif [[ $guess -gt $correct_number ]]; then
      echo "Trop haut, essayez encore !"
    fi
  done

  echo "Bravo ! Vous avez deviné le bon nombre de fichiers."
}

# Appeler la fonction pour commencer le jeu
guess_files
