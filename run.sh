#!/bin/bash

# output report to json format
# docker run -v ~/reports:/etc/reports -t postman/newman:alpine \
# run "https://www.getpostman.com/collections/8a0c9bc08f062d12dcda" \
# --reporters cli,json --reporter-json-export="/etc/reports/report.json"

docker run -v ${PWD}/collections:/etc/newman \
-t postman-checks \
run "https://www.getpostman.com/collections/8a0c9bc08f062d12dcda" \
-r html,cli \
--reporter-html-export reports/testReports.html