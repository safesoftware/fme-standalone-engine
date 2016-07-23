#!/bin/sh

cities=( "Vancouver" "Amersfoort" "Anaheim" "Atlanta" "Austin" "Barcelona" "Beijing" "Belfast" "Bengaluru" "Birmingham" "Boston" "Brisbane" "Calagry" "Cardiff" "Denver" "Edinburgh" "Edmonton" "Espoo" "Essen" "Guangzhou" )

for city in "${cities[@]}"
do
   echo "Submitting job for report on city of ${city}..."
   python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location $city" &
   # do whatever on $i
done

echo "Submitting job for report on city of Vancouver..."
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Vancouver" &
echo "Submitting job for report on city of Amersfoort"
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Amersfoort" &
echo "Submitting job for report on city of Anaheim"
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Anaheim" &
echo "Submitting job for report on city of Atlanta"
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Atlanta" &
echo "Submitting job for report on city of Austin"
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Austin" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Barcelona" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Beijing" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Belfast" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Bengaluru" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Birmingham" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Boston" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Brisbane" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Calagry" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Cardiff" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Denver" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Edinburgh" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Edmonton" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Espoo" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Essen" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Guangzhou" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Houston" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Jinan" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Kumming" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Leuven" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location London" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Lyon" &
echo "Submitting job for report on city of "
python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Madrid" &
 