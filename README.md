# docker-zookeeper

zhucegep/docker–zookeeper除了提供基础的zookeeper服务在，还提供了初始化指定数据的功能。

usage:

`docker run -it -v /path/to/your/zookeeper/init.txt:/data/init.txt zhucegep/docker-zookeeper
`

init.txt内容格式如下

    /test test 
    /test/test2 test2
