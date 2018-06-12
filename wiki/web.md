#Creation du container

host$ > sudo docker run --name [CONTAINER NAME] -v "$PWD"/volumes/web/config/:/etc/apache2/ -v "$PWD"/volumes/web/www/:/var/www/ -p 80:80 -dti ubuntu:xenial

#Lancer bash dans ce container afin d'aller faire les manipulations nécessaires

host$ > docker exec -it [CONTAINER ID] /bin/bash

#Installer Apache dans le Container

container$ > apt-get update && apt-get upgrade
container$ > apt-get install nano
container$ > apt-get install apache2

#Création des dossiers pour accueillir les 2 sites extranet

sudo mkdir –p /var/www/www.[DOMAIN]/public_html
sudo mkdir –p /var/www/b2b.[DOMAIN]/public_html

#Création des pages web des 2 sites extranet

nano /var/www/www.[DOMAIN]/public_html/index.html
nano /var/www/b2b.[DOMAIN]/public_html/index.html

#Virtual Host

nano /etc/apache2/sites-available/[SUB].[DOMAIN].conf

##Script

    ServerName [PREFIX].[DOMAIN]
        ServerAdmin [ADMIN MAIL]
        DocumentRoot /var/www/[PREFIX].[DOMAIN]/public_html

        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined