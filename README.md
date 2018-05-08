# TriMetTestData
Test Data for PDX Bus.
These data files can be retrieved by debug builds of PDX Bus to test specific fields that are rarely found in the wild.

Initially the system wide alerts are being tested.

The following unix command will fix the TriMet routes file

sed -e ':a' -e 'N' -e '$!ba' -e' s/<LineString>[[:space:]]*<coordinates>/<LineString><coordinates>/g' -e 's/<\/coordinates>[[:space:]]*<\/LineString>/<\/coordinates><\/LineString>/g' tm_routes.kml | uniq > tm_routes_fixed.kml
