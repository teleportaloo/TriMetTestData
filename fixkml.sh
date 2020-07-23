#!/bin/sh

#  fixkml.sh
#  TriMet Test Data
#
#  Created by Andrew Wallace on 5/26/18.
#

curl https://developer.trimet.org/gis/data/tm_routes.kml > tm_routes.kml
cat tm_routes.kml | sed -e 's/,0.0//g' | sed -e 's/ id=\"[^"]*"//g'  > tm_routes_v3.kml
git status
