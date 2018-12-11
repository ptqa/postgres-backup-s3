#!/bin/bash
pg_dump -h postgres -U postgres postgres > /tmp/dump.db; /usr/local/bin/aws s3 cp /tmp/dump.db $PG_DUMP_LOCATION  > /dev/null
