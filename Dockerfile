# syntax=docker/dockerfile:1

FROM confluentinc/cp-server-connect-base:6.0.1

LABEL "image_purpose"="add mongo/snowflake sink/source connection to kafka"

#for quick setup use connection config files
RUN   confluent-hub install --no-prompt mongodb/kafka-connect-mongodb:1.3.0 \
   && confluent-hub install --no-prompt snowflakeinc/snowflake-kafka-connector:1.5.1 \
   && confluent-hub install --no-prompt debezium/debezium-connector-mongodb:0.9.4