#!/bin/bash

for i in `seq 1 $2`; do
  awk -F '|' '{printf "%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,\"%s\",\"%s\",\"%s\"\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16}' $1.$i > $1.$i.csv
done

