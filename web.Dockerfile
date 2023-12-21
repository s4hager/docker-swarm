FROM php:8.0-apache

# Erweiterungen installieren
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Buildvariable für Benuter anlegen
ARG user='sshuser'

# Proxy
ENV http_proxy="http://proxy.dvs-plattling.de:3128/"
ENV https_proxy="http://proxy.dvs-plattling.de:3128/"

# Benutzer erstellen
RUN useradd -ms /bin/bash $user && \
    echo "${user}:student123" | chpasswd && \
    mkdir /var/run/sshd && \
    mkdir -p /home/$user/.ssh && \
    usermod -aG sudo $user

# SSH Key kopieren
COPY ./ssh/remote-key.pub /home/$user/.ssh/authorized_keys

# Software installieren
RUN apt-get update && apt-get install -y openssh-server openssh-client nano sudo mariadb-client 

# SSH-Dienst starten
COPY ./data/scripts/docker-entrypoint.sh /scripts/docker-entrypoint.sh
ENTRYPOINT [ "/scripts/docker-entrypoint.sh" ]


# Apache starten
CMD ["apache2-foreground"]

#geht