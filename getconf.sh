#!/bin/bash

# TODO Vérifier si wget est présent
# TODO si non présent, on demande si on veut l'installer
# TODO si oui, yum install wget -y

# On va dans tmp!
cd /tmp

# Obtention de la version la plus récente de conf2
wget https://github.com/vlbeaudoin/conf2/raw/master/conf2-latest.tar.gz

# Extraction des fichiers
tar -zxvf /tmp/conf2-latest.tar.gz

# Installation de conf
cd /tmp/conf2

if [ ! -d src/ ]; then
  echo "Répertoire src/ non-présent."
  echo $'Êtes-vous dans le répertoire de conf2? Cela est nécessaire pour l\'installation'
else
  # On déplace le script et le titre vers le répertoire /usr/bin
  cp src/conf /usr/bin/conf -v
  cp src/conf2.t /usr/bin/conf2.t -v

  # On donne les droits en exécution à root sur le script et sur le titre en ASCII Art (vraiment beau, vraiment beau.)
  chmod u+x /usr/bin/conf -v
  chmod u+x /usr/bin/conf2.t -v

  # Déplacement de la page MAN vers son répertoire
  cp src/conf.1.gz /usr/share/man/man1/conf.1.gz -v

  echo $'Execution de mandb...'
  mandb -q
fi;

# Nettoyage des fichiers temporaires
echo "Nettoyage des fichiers temporaires..."
rm -rf /tmp/conf2*
