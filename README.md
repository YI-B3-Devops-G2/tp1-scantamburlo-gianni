# B3 Devops - TP 1
## Info
mail: gianni.scantamburlo@ynov.com

github_username: XDayonline

## Etape 1

### Prérequis

- Télécharger l'iso d'Ubuntu Server 18.04.3
- Télécharger VirtualBox

### Comment démarrer le projet

- Créer une nouvelle machine virtuelle sur VirtualBox
- Mettre le disque optique en première position
- Choisir l'iso d'Ubuntu comme disque optique
- Dans la configuration réseau, ajouter une redirection de port pour le SSH
* Choisir 127.0.0.1 comme IP hôte
* Choisir un port hôte (2222)
* Choisir un IP invité 127.0.0.1
* Choisir un port invité (22)
* Faire de même pour le port 443 (HTTPS) et 80 (HTTP)

- Lancer la machine virtuelle
- Installer Ubuntu Server
- Installer node.js :
```

    curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
    sudo apt-get update
    sudo apt-get install nodejs npm
    
```
- Installer openssh :
    sudo apt install openssh-client
    sudo apt install openssh-server

- Installer nginx
    sudo apt install nginx

- Lancer une invite de commandes sur Windows pour se connecter en SSH
    ssh gianni@127.0.0.1 -p 8022

- Modifier le fichier index.html
    cd /var/www/html
    nano index.html

- Fermer et enregistrer le fichier avec CTRL + X et entrer Y pour accepter

- Tester sur un navigateur web en allant sur l'adresse : 127.0.0.1:8080

## Etape 2

### Prérequis

- Télécharger Vagrant
- Installer Vagrant
- Installer Virtual Box 6.0

### Comment démarrer le projet

Lancer une invite de commandes:
  vagrant init ubuntu / trusty64
  vagrant up
  
Se connecter en ssh en utilisant
  vagrant ssh

