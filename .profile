#!/bin/bash
export APP_URI=$(echo "${VCAP_APPLICATION}" | jq -r '.uris[0]')
export SEARCH_PATTERN="<<APP_URI>>"

sed "s/$SEARCH_PATTERN/$APP_URI/gi" /home/vcap/app/repo/tomcat7/index.yml
sed "s/$SEARCH_PATTERN/$APP_URI/gi" /home/vcap/app/repo/tomcat8/index.yml
sed "s/$SEARCH_PATTERN/$APP_URI/gi" /home/vcap/app/repo/tomcat9/index.yml
