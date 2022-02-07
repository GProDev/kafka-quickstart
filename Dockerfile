FROM openjdk:8
WORKDIR /opt
RUN apt update
RUN apt upgrade
RUN apt install -y wget
RUN wget https://dlcdn.apache.org/kafka/3.1.0/kafka_2.13-3.1.0.tgz -O ./kafka_2.13-3.1.0.tgz
RUN tar zxvf kafka_2.13-3.1.0.tgz
WORKDIR /opt/kafka_2.13-3.1.0
# RUN cd kafka_2.13-3.1.0
# RUN bin/zookeeper-server-start.sh config/zookeeper.properties
# RUN bin/kafka-server-start.sh config/server.properties
CMD [ "bash" ]
