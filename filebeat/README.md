`sh start.sh`启动filebeat容器  
export_ip.sh会导出IP环境变量，run.sh将IP作为参数传递给容器  
ip将作为node字段用来区分不同机器产生的日志  

也可以通过`IP=$(sh export_ip.sh) docker compose up filebeat`启动容器