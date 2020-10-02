# teammanager
Team manager gathers all the services described in docker-compose config. It's main purpose is to build environment for managing football teams, meaning making crud operations on teams, players and to allow charging fees when transferring players between teams. 
It contains:
* [api gateway](https://github.com/amasiakiewicz/gateway) that handles the incomming requests and forwards them to services. 
* [service discovery lib](https://github.com/amasiakiewicz/eureka) which enables srevices and gateway to find each other. 
* [transfer](https://github.com/amasiakiewicz/transfer), which is responsible for charging fees and transfering funds.
* [team](https://github.com/amasiakiewicz/team), which is responsible for handling crud team operations.
* [player](https://github.com/amasiakiewicz/player), which is responsible for handling crud player operations. 

All services communicate with each other asynchronously through central event store based on Apache Kafka, which is clustered using Apache Zookeeper. 
In order to start managing teams, you need to clone above services as well as this one in one parent directory, build all the services with `./gradlew clean build` fired inside each of service directories and fire docker-compose config file `docker-compose up -d`.

Team manager contains also json config file for Postman, which contains all the available requests. They all point to api gateway.
There is also available Swagger doc under `http://localhost:8762/swagger-ui/`, which shows docs of all discovered services, namely `team`, `player` and `transfer`.
