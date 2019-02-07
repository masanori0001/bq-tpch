#! /bin/bash

cd `dirname $0`/../tpch/2.17.3/dbgen/

for i in `seq 1 $1`; do
  ./dbgen -f -C $1 -S ${i}
done

