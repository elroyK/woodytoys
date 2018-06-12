#Creation du container

host$ > sudo docker run --name wt-extra -v ~/woodytoys/volumes/web/config/:/etc/apache2/ -v ~/woodytoys/volumes/web/www/:/var/www/ -p 8080:80 -dti --ip=172.17.0.2 ubuntu:xenial 

#Lancer bash dans ce container afin d'aller faire les manipulations nécessaires au déploiement d'Apache

host$ > docker exec -it wt-www /bin/bash

#Installer Apache dans le Container

container$ > apt-get update && apt-get upgrade
container$ > apt-get install nano
container$ > apt-get install apache2

#Création des dossiers pour accueillir les 2 sites extranet

container$ > mkdir –p /var/www/www.leroy.kyng.be/public_html
container$ > mkdir –p /var/www/b2b.leroy.kyng.be/public_html

#Création des pages web des 2 sites extranet

container$ > nano /var/www/www.leroy.kyng.be/public_html/index.html
container$ > nano /var/www/b2b.leroy.kyng.be/public_html/index.html

#Virtual Host

nano /etc/apache2/sites-available/www.leroy.kyng.be.conf
nano /etc/apache2/sites-available/b2b.leroy.kyng.be.conf

##Script

    ServerName [PREFIX].[DOMAIN]
        ServerAdmin [ADMIN MAIL]
        DocumentRoot /var/www/[PREFIX].[DOMAIN]/public_html

        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined