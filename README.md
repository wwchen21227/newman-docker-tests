# Newman docker tests for postman collections

This repository is contained the boilerplate on how to run postman collections by using docker newman (postman cli).

## How to start
There are two approaches of running the postman collections in this repo, 
1) Run shell script
1) Run docker-compose

## Run using shell script
1) chmod +x ./build-image.sh and ./run.sh
2) Run ./build-image.sh to build newman docker image.
3) Run ./run.sh after step 2 image build successfully.
4) You will see a testReports.html in collections/reports if everyting working correctly.

## Run using docker-compose
1) Run docker-compose up
2) You will see a testReports.html in collections/reports if everyting working correctly.

## Configurations
- postman-collection-file.json => Your postman collections json file
- postmane-environment-file.json => Your postman environments file
- report-file.html => Your report file name
- customTemplate.hbs => Please refer to Report Templates section below for info.

```bash
run {postman-collection-file.json} 
-e {postmane-environment-file.json} 
-r html,cli 
--reporter-html-export reports/{report-file.html} --reporter-html-template reports/templates/customTemplate.hbs
```

For more options, please refer to https://learning.postman.com/docs/running-collections/using-newman-cli/command-line-integration-with-newman/.

## Report Templates
I also included 3 default report templates in collections/reports/templates, so that you can output your report into a custom report format.