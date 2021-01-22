#! /bin/bash
# Setting up del nostro laboratorio per il Docker Swarm

# Creazione di una coppia di chiavi AWS
echo "Creazione del file .pem"
aws ec2 create-key-pair --key-name MyKeyPair --query 'KeyMaterial' --output text > MyKeyPair.pem

# Creazione di un security-group
echo "Creazione del gruppo di sicurezza"
aws ec2 create-security-group --group-name my-sg --description "My security group"

# Creazione delle regole per abilitare la connessione ssh

###################### !!! NOTA BENE !!! ############################
# Viene aperta una porta 22 con accesso senza restrizioni 0.0.0.0/0 #
#####################################################################
echo "Creazione security-group"
aws ec2 authorize-security-group-ingress --group-name my-sg --protocol tcp --port 22 --cidr 0.0.0.0/0

# Creazione istanze EC2
echo "Creazione istance EC2:"
aws ec2 run-instances --image-id ami-0a91cd140a1fc148a --count 3 --instance-type t2.micro --key-name MyKeyPair --security-groups my-sg --user-data file://bootstrap.txt

echo "SETUP COMPLETATO!"
