FROM mariadb:11

# Buildvariable für Benuter anlegen
ARG user='sshuser'

# Benutzer erstellen
RUN useradd -ms /bin/bash $user && \
    echo "${user}:student123" | chpasswd && \
    mkdir /var/run/sshd && \
    mkdir -p /home/$user/.ssh && \
    usermod -aG sudo ${user} 

# SSH Key kopieren
COPY ./ssh/remote-key.pub /home/$user/.ssh/authorized_keys

# Software installieren; ohne openssh-server
RUN apt-get update && apt-get install -y openssh-client openssh-server nano sudo 

# RUN service ssh start
# RUN /usr/sbin/sshd -D

# EXPOSE 22
# Entrypoint
# COPY ./data/scripts/mariadb-entrypoint.sh /scripts/mariadb-entrypoint.sh

# CMD [ "mariadb", "& ", "/usr/sbin/sshd -D " ]

# GEHT. MUSS NUR NOCH SSH Starten