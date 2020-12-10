#!/bin/sh

#echo -e "\nChecking java..."
#java -version

#echo -e "\nListing CAS configuration under /etc/cas..."
#ls -R /etc/cas

echo -e "\nRunning CAS..."
exec java -Xms512m -Xmx2048M -XX:+TieredCompilation -XX:TieredStopAtLevel=1 -jar docker/cas/war/cas.war
