https://github.com/wnameless/docker-oracle-xe-11g

docker build -t jhouzard/oracle11g-newceres .

docker run -d -p 222:22 -p 1521:1521 -e ORACLE_ALLOW_REMOTE=true jhouzard/oracle11g-newceres

hostname: localhost
port: 49161
sid: xe
username: system
password: oracle

docker exec -i -t 665b4a1e17b6 /bin/bash
