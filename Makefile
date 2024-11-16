# Makefile

README.md:
	@echo "Génération du fichier README.md..."
	@echo "# Guessing Game" > README.md
	@echo "Date d'exécution : $(shell date)" >> README.md
	@echo "Nombre de lignes de code dans guessinggame.sh : $(shell wc -l < guessinggame.sh)" >> README.md
	@echo "Le jeu a pour objectif de deviner le nombre de fichiers dans le répertoire actuel." >> README.md
	@echo "Le fichier guessinggame.sh contient le code principal." >> README.md
