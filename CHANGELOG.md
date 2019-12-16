# B3 Devops - TP 1
## Info
mail: gianni.scantamburlo@ynov.com

github_username: XDayonline

## Etape 1

- Télécharger l'iso d'Ubuntu Server 18.04.3

- Télécharger VirtualBox 

- Créer une nouvelle machine virtuelle sur VirtualBox

- Mettre le disque optique en première position

- Choisir l'iso d'Ubuntu comme disque optique

- Dans la configuration réseau, ajouter une redirection de port pour le SSH

Choisir 127.0.0.1 comme IP hôte

Choisir un port hôte (2222)

Choisir un IP invité 127.0.0.1

Choisir un port invité (22)

Faire de même pour le port 443 (HTTPS) et 80 (HTTP)

Lancer la machine virtuelle

Installer Ubuntu Server

Installer node.js :
  
  sudo apt-get update
  
  sudo apt-get install nodejs npm

Installer openssh :

  sudo apt install openssh-client

  sudo apt install openssh-server


Installer nginx

  sudo apt install nginx

Lancer une invite de commandes sur Windows pour se connecter en SSH

  ssh gianni@127.0.0.1 -p 8022

## Etape 2

Télécharger Vagrant sur Windows

Installer Vagrant

Lancer une invite de commandes:

  vagrant init ubuntu / trusty64
  
  vagrant up
  
Une fois que la machine virtuelle a été créé on modifie la RAM dans la configuration et on met 

Se connecter en ssh en utilisant
  
  vagrant ssh

Editer le fichier vagrantfile

config.vm.provision: shell, path: "configure"

Mettre 1 GB de RAM:

config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
  
    # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end

Pour ajouter un port forwarding pour les ports HTTP HTTPS et SSH :

Ajouter les lignes suivantes:


config.vm.provider "virtualbox"

  config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 22, host: 8022, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 443, host: 8443, host_ip: "127.0.0.1"
