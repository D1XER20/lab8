# Użyj obrazu bazowego alpine
FROM alpine:latest

# Instaluj zależności
RUN apk update && apk add --no-cache bash

# Skopiuj skrypt pluto.sh do katalogu /usr/local/bin w kontenerze
COPY pluto.sh /usr/local/bin/

# Zdefiniuj katalog roboczy
WORKDIR /usr/local/bin

# Nadaj uprawnienia do wykonania skryptu
RUN chmod +x pluto.sh

# Definiuj punkt montowania wolumenu
VOLUME /logi

# Definiuj punkt montowania wolumenu na potrzeby narzędzia CADVISOR (opcjonalne)
VOLUME /sys/fs/cgroup

# Zdefiniuj sposób uruchomienia skryptu pluto.sh przy starcie kontenera
CMD ["/usr/local/bin/pluto.sh"]
#docker build -t lab8docker .

#docker run -d --name limit512 -m 512m -v RemoteVol:/logi lab8docker

# Wykonanie skryptu "pluto.sh" w kontenerze
##docker exec limit512 /usr/local/bin/pluto.sh

# Copiowanie pliku "info.log" z wolumenu do katalogu bieżącego na maszynie macierzystej
##docker cp limit512:/logi/info.log .

# Wyświetlenie zawartości pliku "info.log"
##cat info.log