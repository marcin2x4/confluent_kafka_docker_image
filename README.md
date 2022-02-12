# confluent_kafka_docker_image
Confluent Platform docker image with community components featuring source and sink connectors for MongoDB and Snowflake.

To interact and test this solution:
1. Run `docker-compose up -d` once in the file directory
2. Double check `docker-compose ps`
3. Log in to the Connect (`localhost:9021`) and navigate to `Cluster -> Connect -> connect-default` and establish connections to MongoDB (https://www.youtube.com/watch?v=_6NuTTQdDn4)
   and Snowflake (https://docs.confluent.io/cloud/current/connectors/cc-snowflake-sink.html). You can also save both into `json` files and upload to save time.
4. Log in to `broker` using `docker-compose exec broker bash`
5. To monitor created topic execute `kafka-console-consumer --topic <TOPIC_NAME> --bootstrap-server broker:9092` and start inserting data to MongoDB's collection. 
   If properly set, log shloud be seen in your terminal. Data should also get inserted into Snowflake
6. To release resources run:
   `docker container stop $(docker container ls -a -q -f "label=io.confluent.docker")`
   `docker system prune -a -f --volumes`
