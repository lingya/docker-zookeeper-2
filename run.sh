#! /bin/bash

ZOOKEEPER_BIN_HOME=/opt/zookeeper/bin/
export ZOOKEEPER_BIN_HOME
chown -R 1000:1000 /opt/zookeeper
$ZOOKEEPER_BIN_HOME/zkServer.sh start
/init_data.sh
tail -f $ZOOKEEPER_BIN_HOME/../zookeeper.out
