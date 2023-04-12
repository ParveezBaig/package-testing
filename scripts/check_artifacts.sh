#!/bin/sh

if [ -z "${path_base}" ]; then
  export path_base="/usr/local/percona/pmm2/"
fi

## check exporters
ls -la ${path_base}/exporters | grep -q azure_exporter
ls -la ${path_base}/exporters | grep -q mongodb_exporter
ls -la ${path_base}/exporters | grep -q mysqld_exporter
ls -la ${path_base}/exporters | grep -q node_exporter
ls -la ${path_base}/exporters | grep -q postgres_exporter
ls -la ${path_base}/exporters | grep -q proxysql_exporter
ls -la ${path_base}/exporters | grep -q rds_exporter
ls -la ${path_base}/exporters | grep -q vmagent

## check tools binary

ls -la ${path_base}/tools | grep -q pt-mongodb-summary
ls -la ${path_base}/tools | grep -q pt-mysql-summary
ls -la ${path_base}/tools | grep -q pt-pg-summary
ls -la ${path_base}/tools | grep -q pt-summary

## check custom query files

ls -la ${path_base}/collectors/custom-queries/mysql/medium-resolution | grep -q "queries-mysqld.yml"
ls -la ${path_base}/collectors/custom-queries/mysql/high-resolution | grep -q "queries-mysqld.yml"
ls -la ${path_base}/collectors/custom-queries/mysql/high-resolution | grep -q "queries-mysqld-group-replication.yml"
ls -la ${path_base}/collectors/custom-queries/mysql/low-resolution | grep -q "queries-mysqld.yml"

ls -la ${path_base}/collectors/custom-queries/postgresql/high-resolution | grep -q "example-queries-postgres.yml"
ls -la ${path_base}/collectors/custom-queries/postgresql/high-resolution | grep -q "queries-postgres-uptime.yml"
ls -la ${path_base}/collectors/custom-queries/postgresql/medium-resolution | grep -q "example-queries-postgres.yml"
## Bug PMM-9407 still open
##ls -la ${path_base}/collectors/custom-queries/postgresql/medium-resolution | grep -q "queries.yaml"
ls -la ${path_base}/collectors/custom-queries/postgresql/low-resolution | grep -q "example-queries-postgres.yml"
