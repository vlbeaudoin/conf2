#!/bin/bash

# On va dans tmp!
cd /tmp

# Obtention du projet
wget https://github.com/vlbeaudoin/conf2/raw/master/releases/conf2-latest.tar.gz

# untar le projet 
echo "Extraction du projet..."
tar -zxf /tmp/conf2-latest.tar.gz

# Retirer les fichiers dans src/ pour y mettre les plus récents
echo "Nettoyage des vieux fichiers source..."
rm -rf /tmp/conf2.src
# Créer l'architecture de conf2/ dans /tmp
mkdir -p /tmp/conf2/src -v

#TODO cp les fichiers
#conf
cp /usr/bin/conf /tmp/conf2/src/conf -v
#conf2.t
cp /usr/bin/conf2.t /tmp/conf2/src/conf2.t -v
#conf.1.gz
cp /usr/share/man/man1/conf.1.gz /tmp/conf2/src/conf.1.gz -v
#conf.options
cp /etc/conf2/conf.options /tmp/conf2/src/conf.options -v

#TODO tarball
echo "Compression des fichiers..."
tar -zcf $'conf2.tar.gz' conf2

#TODO cleanup
echo "Nettoyage..."
rm -rf /tmp/conf2
rm -rf /tmp/conf2-latest.tar.gz
