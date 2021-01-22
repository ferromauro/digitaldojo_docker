#! /bin/bash
# Setting up del nostro laboratorio per il Docker Swarm

# Creazione di una coppia di chiavi AWS
echo "Creazione del file .pem"
aws ec2 create-key-pair --key-name MyKeyPair --query 'KeyMaterial' --output text > MyKeyPair.pem

# Aggiungo delle restizioni sul file 
chmod 400 MyKeyPair.pem

# Creazione di un security-group
echo "Creazione del gruppo di sicurezza"
aws ec2 create-security-group --group-name my-sg --description "My security group"

# Salvataggio IP AWS in una variabile
echo "Recupero AWS IP"
AWS_IP=$(curl https://checkip.amazonaws.com) 

# Creazione delle regole per abilitare la connessione ssh
echo "Creazione security-group"
aws ec2 authorize-security-group-ingress --group-name my-sg --protocol tcp --port 22 --cidr $AWS_IP/24

# Creazione istanze EC2
echo "Creazione istance EC2:"
aws ec2 run-instances --image-id ami-0a91cd140a1fc148a --count 2 --instance-type t2.micro --key-name MyKeyPair --security-groups my-sg

echo "SETUP COMPLETATO!"
