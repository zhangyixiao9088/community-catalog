version: '2'
services:
  cetc-pandu:
    image: "zhangyixiao9088/cetc-pandu:0.0.1-SNAPSHOT"
    ports:
      - "${server_port}:8080"
    environment:
      - spring.datasource.url=jdbc:mysql://mysql:3306/pandu_kong?useUnicode=true&characterEncoding=utf8&useSSL=false
      - kong.admin.url=http://kong:9001
    external_links:
      - ${mysql_service}:mysql
      - ${core_service}:kong