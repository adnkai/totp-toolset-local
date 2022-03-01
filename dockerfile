#Lade nginx webserver von Dockerhub als Basisimage
FROM nginx
#Kopiere alle Dateien aus dem aktuellen Verzeichnis in das ngxin startup Verzeichnis
COPY . /usr/share/nginx/html
#Das funktioniert, weil nginx standardmäßig die Index.html aus dem /usr/share/nginx/html Verzeichnis bereitstellt