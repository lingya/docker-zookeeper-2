#! /bin/bash
ZOOKEEPER_BIN_HOME=/opt/zookeeper/bin/
export ZOOKEEPER_BIN_HOME
echo "import data from /data/init.txt"
cat /data/init.txt | while read line  
do
  node=`echo $line | cut -d" " -f1`
  value=`echo $line | cut -d" " -f2`
  echo "create node $node=$value"
  $ZOOKEEPER_BIN_HOME/zkCli.sh create $node $value
done
