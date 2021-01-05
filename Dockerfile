FROM confluentinc/cp-server-connect-base:6.0.1

RUN   confluent-hub install --no-prompt mongodb/kafka-connect-mongodb:1.3.0 \
   && confluent-hub install --no-prompt snowflakeinc/snowflake-kafka-connector:1.5.1