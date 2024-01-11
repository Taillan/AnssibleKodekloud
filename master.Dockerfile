FROM openebs/ansible-runner

RUN apt update && apt install -y vim python net-tools telnet curl