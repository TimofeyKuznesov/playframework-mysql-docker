#!/bin/bash


if [ ! -z $SQL_DUMP_URL ]; then
  if [ ! -f "/docker-entrypoint-initdb.d/${SQL_DUMP_URL##*/}" ]; then
    echo "download sql_dump from ${SQL_DUMP_URL}"
    curl $SQL_DUMP_URL -o /docker-entrypoint-initdb.d/${SQL_DUMP_URL##*/}
  fi
fi

docker-entrypoint.sh "$@"