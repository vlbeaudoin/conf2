>
>       d88P  .d8888b.   .d88888b.  888b    888 8888888888 .d8888b.         d88P 
>      d88P  d88P  Y88b d88P" "Y88b 8888b   888 888       d88P  Y88b       d88P  
>     d88P   888    888 888     888 88888b  888 888              888      d88P   
>    d88P    888        888     888 888Y88b 888 8888888        .d88P     d88P    
>   d88P     888        888     888 888 Y88b888 888        .od888P"     d88P     
>  d88P      888    888 888     888 888  Y88888 888       d88P"        d88P      
> d88P       Y88b  d88P Y88b. .d88P 888   Y8888 888       888"        d88P       
>d88P         "Y8888P"   "Y88888P"  888    Y888 888       888888888  d88P        
>                                                                                

### Basé sur le gestionnaire de configurations de Vincent Duval, professeur au Cégep Édouard-Montpetit

Version 2 par Victor Lacasse-Beaudoin
Dernière modification majeure: 2017-04-24


DESCRIPTION
---
Permet de gérer les versions des fichiers de configuration, en plus d'accéder rapidement à certains fichiers plus profonds.


INSTALLATION
---

1) Obtenir le script d'installation de conf2
	`# wget https://raw.githubusercontent.com/vlbeaudoin/conf2/master/getconf.sh`
2) Exécuter le script d'installation
	`# bash getconf.sh`
Commande complète (pour installation rapide)
	`# wget https://raw.githubusercontent.com/vlbeaudoin/conf2/master/getconf.sh && bash getconf.sh`


UTILISATION
---

1) Installer conf (voir plus bas)
2) Initialiser conf 
	# conf -i
3) Ajouter un ou plusieurs fichier(s) à conf
	# conf -a /directory/file
4) Voir la liste des fichiers
	# conf -l
5) Sauvegarder les fichiers courants
	# conf -s
6) Voir la version de sauvegarde courante
	# conf -v

Pour plus de détails, voir la page MAN inclue avec le script
	# man conf
