## Creation du container

host$ > pa

## Lancer bash dans ce container afin d'aller faire les manipulations nécessaires au déploiement d'Apache

host$ > docker exec -it wt-www /bin/bash

## Installer Apache dans le Container

container$ > apt-get update && apt-get upgrade
container$ > apt-get install nano
container$ > apt-get install apache2

## Création des dossiers pour accueillir les 2 sites extranet

container$ > mkdir –p /var/www/www.leroy.ephec-ti.be/public_html
container$ > mkdir –p /var/www/b2b.leroy.ephec-ti.be/public_html

## Création des pages web des 2 sites extranet

container$ > nano /var/www/www.leroy.ephec-ti.be/public_html/index.html
container$ > nano /var/www/b2b.leroy.ephec-ti.be/public_html/index.html

## Virtual Host

nano /etc/apache2/sites-available/www.leroy.ephec-ti.be.conf
nano /etc/apache2/sites-available/b2b.leroy.ephec-ti.be.conf

### Script

#### Sites publics

    ServerName [PREFIX].[DOMAIN]
        ServerAdmin [ADMIN MAIL]
        DocumentRoot /var/www/[PREFIX].[DOMAIN]/public_html

        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
        
#### Site privé (Intranet)

    ServerName intranet.leroy.ephec-ti.be

    ServerAdmin admin@leroy.ephec-ti.be
    DocumentRoot /var/www/intranet.leroy.ephec-ti.be/public_html

    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
    
    <Directory "/var/www/intranet.leroy.ephec-ti.be/public_html">
        AllowOverride All
        allow from all
        Options -Indexes
    </Directory>