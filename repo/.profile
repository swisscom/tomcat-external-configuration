#!/bin/bash
export APP_URI=$(echo "${VCAP_APPLICATION}" | jq -r '.uris[0]')
export SEARCH_PATTERN="<<APP_URI>>"

sed -i "s/$SEARCH_PATTERN/$APP_URI/gi" /home/vcap/app/public/tomcat7/index.yml
sed -i "s/$SEARCH_PATTERN/$APP_URI/gi" /home/vcap/app/public/tomcat8/index.yml
sed -i "s/$SEARCH_PATTERN/$APP_URI/gi" /home/vcap/app/public/tomcat9/index.yml
