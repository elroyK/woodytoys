#Créer Container vide en mappant les ports nécessaires (important de savoir quels ports il va falloir mapper, plus facile que de les remapper par la suite)

host$ > docker run --name [CONTAINER NAME] -v "$PWD"/volumes/dns/:/etc/bind/ -dit -p 53:53/tcp -p 53:53/udp ubuntu:xenial

#Lancer bash dans ce container afin d'aller faire les manipulations nécessaires

host$ > docker exec -it [CONTAINER ID] /bin/bash

#Installer Bind dans le Container

container$ > apt-get update && apt-get upgrade
container$ > apt-get install nano
container$ > apt-get install bind9

#Config Zone

container$ > nano /etc/bind/db.[FQDN]

#Ajout Zone

container$ > nano /etc/bind/named.conf.local