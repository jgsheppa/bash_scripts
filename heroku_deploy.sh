#! /bin/bash

heroku container:push web --app avisio-test

if [ "$?" -ne "0" ]
then 
  echo "Error: First Heroku deploy command has failed."
  exit 1
fi

heroku container:release web --app avisio-test

if [ "$?" -ne "0" ]
then 
  echo "Error: Second Heroku deploy command has failed."
  exit 2
fi

heroku open --app avisio-test
exit 0
