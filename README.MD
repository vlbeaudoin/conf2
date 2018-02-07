# /CONF2/
### Gestionnaire de fichiers de configurations sur CentOS 7

Basé sur le gestionnaire de configurations de Vincent Duval, professeur au Cégep Édouard-Montpetit

Version 2 par Victor Lacasse-Beaudoin

Dernière modification majeure: 2017-04-24


DESCRIPTION
---
Permet de gérer les versions des fichiers de configuration, en plus d'accéder rapidement à certains fichiers plus profonds.


INSTALLATION RAPIDE
---

Simplement exécutez la commande suivante en tant que root pour être prêtE en quelques secondes!

`wget https://raw.githubusercontent.com/vlbeaudoin/conf2/master/getconf.sh && bash getconf.sh && rm -rf getconf.sh && conf -i`


INSTALLATION MANUELLE
---
0) L'utilisateur courant doit être __root__. 
	
	`sudo bash`

1) Obtenir le script d'installation de conf2

	`wget https://raw.githubusercontent.com/vlbeaudoin/conf2/master/getconf.sh`
    
2) Exécuter le script d'installation

	`bash getconf.sh`

3) Retirer le script d'installation

	`rm getconf.sh`


UTILISATION
---

Note: Toutes les commandes de CONF2 peuvent être utilisées par un utilisateur autre que root, la compatibilité avec `sudo` est présente.

1) Installer conf (voir plus haut)
2) Initialiser conf 

	`conf -i`
    
3) Ajouter un ou plusieurs fichier(s) à conf

	`conf -a /directory/file`
    
4) Voir la liste des fichiers

	`conf -l`
    
5) Sauvegarder les fichiers courants

	`conf -s`
    
6) Voir la version de sauvegarde courante

	`conf -v`

    Pour plus de détails, voir la page MAN inclue avec le script
    
    `man conf`
