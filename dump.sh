#!/bin/bash

pg_dump $PG_DUMP_OPTIONS -h $PG_HOST -U $PG_USER $PG_DB | /usr/local/bin/aws s3 cp - $PG_DUMP_LOCATION  > /dev/null
