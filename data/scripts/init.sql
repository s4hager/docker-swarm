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


-- Fügen Sie Fragen und Antworten zum Thema Docker und Kubernetes in die FAQ-Tabelle ein
INSERT INTO faq (frage, antwort)
VALUES
    ('Was ist Docker?', 'Docker ist eine Containerisierungsplattform, mit der Anwendungen und deren Abhängigkeiten in isolierten Containern ausgeführt werden können. Dies erleichtert die Bereitstellung und Skalierung von Anwendungen.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Wie erstelle ich ein Docker-Container-Image?', 'Sie können ein Docker-Image erstellen, indem Sie eine Dockerfile-Datei definieren, die die Anweisungen zum Erstellen des Images enthält. Dann verwenden Sie den Befehl "docker build", um das Image zu erstellen.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Was ist Kubernetes?', 'Kubernetes ist eine Open-Source-Orchestrierungsplattform für Container. Es ermöglicht das automatische Bereitstellen, Skalieren und Verwalten von Containern und Anwendungen in einer cloudbasierten oder lokalen Umgebung.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Wie erstelle ich ein Kubernetes-Pod?', 'Ein Pod ist die kleinste Bereitstellungseinheit in Kubernetes. Sie können einen Pod in einer YAML-Datei definieren, die die Container und deren Konfiguration enthält. Dann verwenden Sie "kubectl apply" oder "kubectl create".');

-- Fügen Sie weitere Fragen und Antworten zum Thema Docker und Kubernetes in die FAQ-Tabelle ein
INSERT INTO faq (frage, antwort)
VALUES
    ('Welche Vorteile bietet die Verwendung von Docker?', 'Docker ermöglicht die Portabilität von Anwendungen, eine konsistente Umgebungsentwicklung und Skalierbarkeit, um nur einige Vorteile zu nennen.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Wie unterscheiden sich Docker-Container von virtuellen Maschinen (VMs)?', 'Docker-Container teilen sich das Betriebssystem mit dem Host, während VMs ihre eigenen Betriebssysteminstanzen haben. Container sind daher ressourcenschonender und starten schneller.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Was ist ein Docker-Image-Repository?', 'Ein Docker-Image-Repository ist ein Ort, an dem Docker-Images gespeichert und geteilt werden. Beliebte Repositorys sind Docker Hub, Google Container Registry und AWS Elastic Container Registry.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Wie kann ich einen Docker-Container ausführen?', 'Verwenden Sie den Befehl "docker run" gefolgt von einem Docker-Image, um einen Container auszuführen. Sie können auch Optionen für Netzwerke, Volumes und Umgebungsvariablen festlegen.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Was ist ein Kubernetes-Cluster?', 'Ein Kubernetes-Cluster ist eine Gruppe von miteinander verbundenen Computern oder VMs, die zur Verwaltung von Docker-Containern und Anwendungen verwendet werden.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Was sind Kubernetes-Namespace?', 'Kubernetes-Namespace sind logische Gruppen, die dazu verwendet werden, Ressourcen und Objekte in einem Cluster zu isolieren und zu organisieren. Sie helfen bei der Verwaltung von Anwendungen in großen Clustern.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Wie kann ich Pods in Kubernetes skalieren?', 'Verwenden Sie den Befehl "kubectl scale" oder definieren Sie in einer YAML-Datei die gewünschte Anzahl von Replica-Pods und verwenden Sie "kubectl apply". Kubernetes wird die gewünschte Anzahl von Pods bereitstellen.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Was ist ein Kubernetes-Dienst?', 'Ein Kubernetes-Dienst ist eine Abstraktion, die Netzwerkverkehr an eine Gruppe von Pods weiterleitet. Dies ermöglicht die Erreichbarkeit von Anwendungen und Load Balancing.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Wie sichere ich Daten in einem Docker-Container?', 'Sie können Daten in Docker-Containern sichern, indem Sie Volumes verwenden, um Daten außerhalb des Containers zu speichern. Dies gewährleistet die Persistenz der Daten.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Kann ich Docker-Container auf Windows und macOS ausführen?', 'Ja, Docker bietet Docker Desktop für Windows und macOS, um Docker-Container auf diesen Plattformen auszuführen.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Was ist ein Kubernetes-Pod-Netzwerk?', 'Ein Kubernetes-Pod-Netzwerk ist ein Netzwerk, das die Kommunikation zwischen Pods im Cluster ermöglicht. Gängige Lösungen sind Flannel, Calico und Weave.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Wie kann ich Kubernetes-Cluster überwachen?', 'Sie können Kubernetes-Cluster mit Tools wie Prometheus, Grafana, Kubernetes-Dashboard und Kibana überwachen.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Wie aktualisiere ich eine laufende Anwendung in Kubernetes?', 'Sie können eine laufende Anwendung in Kubernetes aktualisieren, indem Sie die Konfigurationsdatei ändern und dann "kubectl apply" verwenden. Kubernetes aktualisiert die Pods schrittweise.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Was ist ein Kubernetes-Persistenzspeicher?', 'Kubernetes-Persistenzspeicher sind Speicherlösungen, die dazu verwendet werden, Daten in Containern dauerhaft zu speichern, selbst wenn die Container beendet oder neu gestartet werden.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Welche Rolle spielt YAML in Kubernetes?', 'YAML ist die Sprache, die in Kubernetes für die Konfiguration von Ressourcen verwendet wird. Sie definieren Kubernetes-Objekte wie Deployments und Services in YAML-Dateien.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Was ist der Unterschied zwischen einem Deployment und einem StatefulSet in Kubernetes?', 'Ein Deployment wird für skalierbare, nicht persistente Anwendungen verwendet, während ein StatefulSet für persistente Anwendungen mit stabiler Netzwerkidentität geeignet ist.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Was ist Kubernetes Ingress?', 'Kubernetes Ingress ist eine Ressource, die den Zugriff auf Dienste innerhalb eines Clusters über HTTP und HTTPS steuert. Sie kann für das Routing und die Lastverteilung verwendet werden.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Kann ich Docker-Container auf einem Kubernetes-Cluster ausführen?', 'Ja, Sie können Docker-Container auf einem Kubernetes-Cluster ausführen, indem Sie Container-Images in Ihren Pods verwenden.');

INSERT INTO faq (frage, antwort)
VALUES
    ('Wie kann ich Kubernetes auf einem öffentlichen Cloud-Provider bereitstellen?', 'Die meisten Cloud-Provider bieten verwaltete Kubernetes-Dienste wie Amazon EKS, Google GKE und Azure AKS an, um Kubernetes-Cluster einfach zu erstellen und zu verwalten.');