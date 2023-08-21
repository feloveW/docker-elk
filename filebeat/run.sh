docker run --rm --env IP=$IP  -v ./filebeat.yml:/usr/share/filebeat/filebeat.yml -v /root/server/run/log:/usr/share/filebeat/logs --name docker-elk-filebeat docker.elastic.co/beats/filebeat:8.9.0
