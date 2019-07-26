#!/bin/bash

pg_dump $PG_DUMP_OPTIONS -h $PG_HOST -U $PG_USER $PG_DB > /tmp/dump.db; /usr/local/bin/aws s3 cp /tmp/dump.db $PG_DUMP_LOCATION  > /dev/null; rm /tmp/dump.db
