FROM mariadb:11

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

# Software installieren; ohne openssh-server
RUN apt-get update && apt-get install -y openssh-client openssh-server nano sudo

COPY ./data/scripts/mariadb-entrypoint.sh /scripts/mariadb-entrypoint.sh

#USER $user

# CMD [ "/scripts/mariadb-entrypoint.sh" ]

# MariaDB-Dienst ausführen
CMD [ "mariadbd" ]