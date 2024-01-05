-- Erstellen Sie zuerst eine Datenbank, falls Sie noch keine haben
CREATE DATABASE IF NOT EXISTS faq_database;
USE faq_database;

-- Erstellen Sie die FAQ-Tabelle
CREATE TABLE IF NOT EXISTS faq (
    id INT AUTO_INCREMENT PRIMARY KEY,
    frage TEXT NOT NULL,
    antwort TEXT NOT NULL
);

-- mysql
REVOKE ALL PRIVILEGES ON  *.* FROM 'student'@'%'; REVOKE GRANT OPTION ON  *.* FROM 'student'@'%'; GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, INDEX, ALTER ON  *.* TO 'student'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;


-- Fügen Sie Fragen und Antworten zum Thema Docker und Docker Swarm in die FAQ-Tabelle ein

INSERT INTO faq (frage, antwort) VALUES
    ('Was ist Docker?', 'Docker ist eine Plattform zur Containerisierung von Anwendungen, die es ermöglicht, Anwendungen mit all ihren Abhängigkeiten in Containern zu verpacken und überall auszuführen.'),
    ('Wie erstelle ich einen Docker-Container?', 'Sie können einen Docker-Container mit dem Befehl "docker run" erstellen. Zum Beispiel: "docker run -d -p 80:80 --name mein-container mein-image" startet einen Container aus dem Image "mein-image" mit dem Namen "mein-container" und leitet den Port 80 weiter.'),
    ('Was sind Docker-Images?', 'Docker-Images sind schreibgeschützte Vorlagen, die als Basis für die Erstellung von Containern dienen. Sie enthalten den Anwendungscode, Laufzeit, Bibliotheken, Abhängigkeiten und andere Einstellungen, die für die Ausführung der Anwendung erforderlich sind.'),
    ('Wie lösche ich einen Docker-Container?', 'Sie können einen Docker-Container mit dem Befehl "docker rm" löschen. Zum Beispiel: "docker rm mein-container" löscht den Container mit dem Namen "mein-container".'),
    ('Was ist ein Dockerfile?', 'Ein Dockerfile ist eine Textdatei, die Anweisungen zum Erstellen eines Docker-Images enthält. Es definiert, welche Software installiert werden soll, welche Dateien hinzugefügt werden sollen, und weitere Konfigurationen für den Container.'),
    ('Was ist Docker Swarm?', 'Docker Swarm ist eine Clustering- und Orchestrierungslösung für Docker-Container. Es ermöglicht die Verwaltung und Skalierung von Docker-Containern über mehrere Hosts hinweg.'),
    ('Wie starte ich einen Docker Swarm-Dienst?', 'Sie können einen Docker Swarm-Dienst mit dem Befehl "docker service create" starten. Zum Beispiel: "docker service create --name mein-dienst mein-image" startet einen Dienst aus dem angegebenen Image.'),
    ('Wie skaliere ich Docker Swarm-Dienste?', 'Sie können die Anzahl der Repliken eines Docker Swarm-Dienstes mit dem Befehl "docker service scale" skalieren. Zum Beispiel: "docker service scale mein-dienst=3" setzt die Anzahl der Repliken auf 3.'),
    ('Wie beende ich einen Docker Swarm-Dienst?', 'Sie können einen Docker Swarm-Dienst mit dem Befehl "docker service rm" beenden. Zum Beispiel: "docker service rm mein-dienst" beendet den Dienst mit dem Namen "mein-dienst".'),
('Wie erstelle ich ein Docker-Netzwerk?', 'Sie können ein Docker-Netzwerk mit dem Befehl "docker network create" erstellen. Zum Beispiel: "docker network create mein-netzwerk" erstellt ein Netzwerk mit dem Namen "mein-netzwerk".'),
    ('Was ist ein Docker-Volume?', 'Ein Docker-Volume ist ein persistenter Datenspeicher, der von Containern gemeinsam genutzt werden kann. Volumes ermöglichen es, Daten zwischen Containern zu teilen und persistent zu speichern, auch wenn Container beendet oder neu gestartet werden.'),
    ('Wie sehe ich die Protokolle eines Docker-Containers?', 'Sie können die Protokolle eines Docker-Containers mit dem Befehl "docker logs" anzeigen. Zum Beispiel: "docker logs mein-container" gibt die Protokolle des Containers mit dem Namen "mein-container" aus.'),
    ('Wie erstelle ich ein benutzerdefiniertes Docker-Image?', 'Sie können ein benutzerdefiniertes Docker-Image erstellen, indem Sie ein Dockerfile mit den erforderlichen Anweisungen erstellen und dann den Befehl "docker build" verwenden. Beispiel: "docker build -t mein-image:tag ." erstellt ein Image im aktuellen Verzeichnis.'),
    ('Wie füge ich einen Node zu einem Docker Swarm-Cluster hinzu?', 'Sie können einen Node zu einem Docker Swarm-Cluster mit dem Befehl "docker swarm join" hinzufügen. Beachten Sie, dass Sie einen Join-Token benötigen, den Sie vom Manager-Knoten erhalten.'),
    ('Wie überwache ich Docker Swarm-Dienste?', 'Sie können Docker Swarm-Dienste mit dem Befehl "docker service ps" überwachen. Zum Beispiel: "docker service ps mein-dienst" zeigt Informationen über die Repliken des Dienstes an.'),
    ('Kann ich Umgebungsvariablen in Docker Compose verwenden?', 'Ja, Sie können Umgebungsvariablen in Docker Compose verwenden. Definieren Sie die Variablen in einer Datei namens ".env" im selben Verzeichnis wie Ihr Docker Compose-Datei und verwenden Sie sie in Ihrem Compose-File.'),
    ('Wie aktualisiere ich Docker Swarm-Dienste?', 'Sie können Docker Swarm-Dienste mit dem Befehl "docker service update" aktualisieren. Zum Beispiel: "docker service update --image neue-version mein-dienst" aktualisiert den Dienst auf die neue Version des Images.');


