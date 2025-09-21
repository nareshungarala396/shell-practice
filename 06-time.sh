#!/bin/bash

START_TIME=$(date + %s)

END_TIME=$(date + %s)

sleep 10

total_time=$((END_TIME-START_TIME))

echo "totaltime= $total_time"