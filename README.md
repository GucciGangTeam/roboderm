### Roboderm

#### Site deployment instruction

1. Clone this repository on your server
2. Install Docker and Maven on server
3. Run `cd roboderm-site & mvn clean package & cd ..`
3. From `roboderm` run `docker-compose build`
4. Run `docker-comose up`

More some docker commands:
* `docker-compose dawn` stop and delete containers
* `docker-compose logs -f [service name]` show logs
* `docker-compose ps` show all running containers
* `docker-compose exec [service name] [command]` run command in running container
* `docker-compose images` show all images