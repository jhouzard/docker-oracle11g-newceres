#!/bin/bash

service oracle-xe start

export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
export PATH=$ORACLE_HOME/bin:$PATH
export ORACLE_SID=XE

for f in /tmp/assets/*; do
  case "$f" in
    *.sql)    echo "$0: running $f"; echo "exit" | $ORACLE_HOME/bin/sqlplus "SYSTEM/oracle" @"$f"; echo ;;
    *)        echo "$0: ignoring $f" ;;
  esac
  echo
done