#!/bin/sh
echo "Submitting job for report on city of Vancouver"
 python ./FMEEngineClient.py localhost 7777 "AirQualityReport.fmw --Location Vancouver"
 