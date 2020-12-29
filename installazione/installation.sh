#! /bin/bash

# Aggiorniamo i packages della nostra istanza EC2
echo "Aggiornamento dei packages della nostra istanza."
sudo apt-get update -y
clear

# Installation of some basic softwares
echo "Installazione di alcuni software essenziali."
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
clear

# Aggiungiamo la Docker official GPG key
echo "Aggiungiamo la official GPG key."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
clear

# Verifica del fingerprint
sudo apt-key fingerprint 0EBFCD88

# Aggiungiamo il repository apt per scaricare Docker
echo "Aggiungiamo il repository apt per Docker"
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
clear

# Facciamo l'update ed installiamo Docker
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
clear

# Fine Installazione
echo "Installazione completata!"
echo "Prova a lanciare il comando: sudo docker run hello-world"

# Per Utilizzare Docker senza essere root aggiungere la propria utenza al gruppo 'docker'
# sudo usermod -aG docker <your-user>