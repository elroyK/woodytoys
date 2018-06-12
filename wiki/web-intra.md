#Creation du container

host$ > sudo docker run --name wt-intra -v ~/woodytoys/volumes/web-intra/config/:/etc/apache2/ -v ~/woodytoys/volumes/web-intra/www/:/var/www/ -p 8080:80 -dti ubuntu:xenial --net=dmz --ip=172.16.0.3

#Lancer bash dans ce container afin d'aller faire les manipulations nécessaires au déploiement d'Apache

host$ > docker exec -it wt-www /bin/bash

#Installer Apache dans le Container

container$ > apt-get update && apt-get upgrade
container$ > apt-get install nano
container$ > apt-get install apache2

#Création des dossiers pour accueillir le site interne

container$ > mkdir –p /var/www/intranet.leroy.kyng.be/public_html

#Création de la page du site intranet

container$ > nano /var/www/intranet.leroy.kyng.be/public_html/index.html

#Virtual Host

nano /etc/apache2/sites-available/intranet.leroy.kyng.be.conf

##Script

    ServerName intranet.leroy.kyng.be

    ServerAdmin admin@leroy.kyng.be
    DocumentRoot /var/www/intranet.leroy.kyng.be/public_html

    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
    
    <Directory "/var/www/intranet.leroy.kyng.be/public_html">
        AllowOverride All
        allow from all
        Options -Indexes
    </Directory>