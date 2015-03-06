FROM ubuntu:12.04
MAINTAINER zhucegep <zhucegep@gmail.com>

ENV PROJ_NAME zhucegep-zookeeper

RUN apt-get update && apt-get install -y openjdk-7-jre-headless wget
RUN wget -q -O - https://archive.apache.org/dist/zookeeper/zookeeper-3.4.5/zookeeper-3.4.5.tar.gz | tar -xzf - -C /opt \
    && mv /opt/zookeeper-3.4.5 /opt/zookeeper \
    && cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg \
    && mkdir -p /tmp/zookeeper

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

EXPOSE 2181

WORKDIR /opt/zookeeper

VOLUME ["/opt/zookeeper/conf", "/tmp/zookeeper"]

ADD data /data
ADD init_data.sh /init_data.sh
ADD run.sh /run.sh

CMD ["/run.sh"]
