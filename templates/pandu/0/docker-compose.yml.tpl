version: '2'
services:
  pandu:
    image: "zhangyixiao9088/cetc-pandu:0.0.1-SNAPSHOT"
    ports:
      - "${server_port}:8900"
    environment:
      - spring.datasource.url=jdbc:mysql://mysql:3306/pandu_kong?useUnicode=true&characterEncoding=utf8&useSSL=false
      - kong.admin.url=http://kong:9001
      - fux.server=${fux_server}
      - security.oauth2.client.client-id=${app_id}
      - security.oauth2.client.client-secret=${app_secret}
    external_links:
      - ${mysql_service}:mysql
      - ${core_service}:kong