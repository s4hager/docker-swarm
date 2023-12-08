FROM debian:bookworm

# Buildvariable für Benuter anlegen
# ARG user='sshuser'

# Proxy
#ENV http_proxy="http://proxy.dvs-plattling.de:3128/"
#ENV https_proxy="http://proxy.dvs-plattling.de:3128/"
#ENV DEBIAN_FRONTEND noninteractive

# Benutzer erstellen
# RUN useradd -ms /bin/bash $user && \
#     echo "${user}:student123" | chpasswd && \
#     mkdir /var/run/sshd && \
#     mkdir -p /home/$user/.ssh && \
#     usermod -aG sudo sshuser

# SSH Key kopieren
# COPY ./ssh/remote-key.pub /home/$user/.ssh/authorized_keys

# Software installieren
RUN apt-get update && apt-get install -y sudo nano openssh-server openssh-client apache2 phpmyadmin 

# SSH-Dienst starten
# COPY ./data/scripts/docker-entrypoint.sh /scripts/docker-entrypoint.sh
# ENTRYPOINT [ "/scripts/docker-entrypoint.sh" ]

# phpmyadmin aktivieren
COPY ./data/scripts/phpmyadmin.conf /etc/apache2/conf-available/
RUN a2enconf phpmyadmin.conf

#USER $user

# apache starten
# CMD [ "apache2-foreground" ]
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]