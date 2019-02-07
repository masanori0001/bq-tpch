#!/bin/bash -x

SCHEMA_DIR=$(cd `dirname $0`/../schema; pwd)
SCHEMA_FILE=lineitem.schema
SOURCE_FORMAT=CSV
CLOUD_STORAGE_URI=$1
BQTABLE=$2

bq mk --external_table_definition=${SCHEMA_DIR}/${SCHEMA_FILE}@${SOURCE_FORMAT}=${CLOUD_STORAGE_URI} ${BQTABLE}
