#!/bin/bash

cities=("Vancouver" "Amersfoort" "Anaheim" "Atlanta" "Austin" "Barcelona" "Beijing" "Belfast" "Bengaluru" "Birmingham" "Boston" "Brisbane" "Calagry" "Cardiff" "Denver" "Edinburgh" "Edmonton" "Espoo" "Essen" "Guangzhou" "Houston" "Jinan" "Kunming" "Leuven" "London" "Lyon" "Madrid" "Manchester")

for city in "${cities[@]}"
do
   echo "Submitting job for report on city of ${city}..."
   python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location $city" &
done
