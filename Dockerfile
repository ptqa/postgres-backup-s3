FROM postgres:10

RUN apt-get update && apt-get -y upgrade && apt install -y python-pip curl; pip install awscli; apt-get clean
RUN curl -L --insecure https://github.com/odise/go-cron/releases/download/v0.0.6/go-cron-linux.gz | zcat > /usr/local/bin/go-cron; chmod u+x /usr/local/bin/go-cron
COPY run.sh dump.sh /
ENV PG_HOST=postgres PG_USER=postgres PG_DB=postgres
ENTRYPOINT /run.sh
