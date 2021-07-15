#!/bin/sh

get_icon() {
  case $1 in
    01d) icon="";;
    01n) icon="";;
    02d) icon="";;
    02n) icon="";;
    03*) icon="";;
    04*) icon="";;
    09d) icon="";;
    09n) icon="";;
    10d) icon="";;
    10n) icon="";;
    11d) icon="";;
    11n) icon="";;
    13d) icon="";;
    13n) icon="";;
    50d) icon="";;
    50n) icon="";;
    *) icon="";
  esac

  echo $icon
}

# API key from openweathermap. Add yours by signing up there.
API_KEY="3ad7ab6942867d838916f70a5b4336e0"
# Get your lat and long. Just Google.
# -29.364679726122002, 30.632690565134624 - Cool Air
LAT="-29.364679726122002"
LON="30.632690565134624"
UNITS="metric"
SYMBOL="°C"

weather=$(curl -sf "http://api.openweathermap.org/data/2.5/weather?lat=$LAT&lon=$LON&units=$UNITS&APPID=$API_KEY")

if [ ! -z "$weather" ]; then
  #description=$(echo "$weather" | jq -r ".weather[0].description")
  temperature=$(echo "$weather" | jq ".main.temp" | cut -d "." -f 1)
  icon=$(echo "$weather" | jq -r ".weather[0].icon")

  echo "$(get_icon "$icon")" "$temperature$SYMBOL"
fi
