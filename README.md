1. Build the image
```bash
docker build -t kafka_quickstart_img .
```

1. Start the container
```bash
docker run -td --name kafka_quickstart kafka_quickstart_img
```

1. Start Zoo keeper
```bash
docker exec -it kafka_quickstart bin/zookeeper-server-start.sh config/zookeeper.properties
```

2. Start Kafka server
In another terminal run:
```bash
docker exec -it kafka_quickstart bin/kafka-server-start.sh config/server.properties
```

3. Log into the container
In another terminal run:
```bash
docker exec -it kafka_quickstart bash
```

4. Create a topic
```bash
bin/kafka-topics.sh --create --topic quickstart-events --bootstrap-server localhost:9092
```

5. Show a topic
```bash
bin/kafka-topics.sh --describe --topic quickstart-events --bootstrap-server localhost:9092
```

1. Write events into the topic
```bash
bin/kafka-console-producer.sh --topic quickstart-events --bootstrap-server localhost:9092
```
By default, each line you enter will result in a separate event being written to the topic.

You can stop the producer client with ```Ctrl-C``` at any time.

7. Read events
```bash
bin/kafka-console-consumer.sh --topic quickstart-events --from-beginning --bootstrap-server localhost:9092
```

You can stop the consumer client with ```Ctrl-C``` at any time.

8. Source

For more details about this Kafka quickstart, check the [official website](https://kafka.apache.org/quickstart)
