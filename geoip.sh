#!/bin/bash

[ -f IP2LOCATION-LITE-DB1.CSV.ZIP ] || wget -T 5 -t 1 https://download.ip2location.com/lite/IP2LOCATION-LITE-DB1.CSV.ZIP

echo -n "Creating CBE (Country,Begin,End) CSV file..."
unzip -p IP2LOCATION-LITE-DB1.CSV.ZIP IP2LOCATION-LITE-DB1.CSV | awk -F \" '{print $6"-"$8}' > cbe
echo -ne "DONE\nGenerating BIND GeoIP.acl file..."

#rm -f cbe.csv
echo "DONE"

exit 0
