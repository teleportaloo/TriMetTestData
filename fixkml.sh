#!/bin/sh

#  fixkml.sh
#  TriMet Test Data
#
#  Created by Andrew Wallace on 5/26/18.
#
sed -e ':a' -e 'N' -e '$!ba' -e' s/<LineString>[[:space:]]*<coordinates>/<LineString><coordinates>/g' -e 's/<\/coordinates>[[:space:]]*<\/LineString>/<\/coordinates><\/LineString>/g' tm_routes.kml | uniq > tm_routes_v3.kml
