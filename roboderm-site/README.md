### Roboderm web-api

#### Инструкция по запуску контейнера

1. Из `web-api` выполнить `mvn clean package`
2. Выполнить команду `docker build -t roboderm-web .`
3. Выполнить команду `docker run -itd -p 80:80 --name roboderm-web-container roboderm-web`
