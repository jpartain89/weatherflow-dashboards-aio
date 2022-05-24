docker run --rm \
  --name=weatherflow-collector-brookhaven_dr-remote-import \
  -e TZ=America/Chicago \
  -e WEATHERFLOW_COLLECTOR_COLLECTOR_TYPE=remote-import \
  -e WEATHERFLOW_COLLECTOR_DEBUG=false \
  -e WEATHERFLOW_COLLECTOR_DEBUG_CURL=false \
  -e WEATHERFLOW_COLLECTOR_FUNCTION=import \
  -e WEATHERFLOW_COLLECTOR_HEALTHCHECK=true \
  -e WEATHERFLOW_COLLECTOR_HOST_HOSTNAME=jpserver.jpcdi.com \
  -e WEATHERFLOW_COLLECTOR_IMPORT_DAYS=35 \
  -e WEATHERFLOW_COLLECTOR_INFLUXDB_PASSWORD=$(op item get WeatherFlowDashboards --field label=WEATHERFLOW_COLLECTOR_INFLUXDB_PASSWORD) \
  -e WEATHERFLOW_COLLECTOR_INFLUXDB_URL=http://10.0.100.41:8086/write?db=weatherflow \
  -e WEATHERFLOW_COLLECTOR_INFLUXDB_USERNAME=weatherflow \
  -e WEATHERFLOW_COLLECTOR_STATION_ID="51291" \
  -e WEATHERFLOW_COLLECTOR_THREADS=4 \
  -e WEATHERFLOW_COLLECTOR_TOKEN=$(op item get WeatherFlowDashboards --field label=WEATHERFLOW_COLLECTOR_TOKEN) \
  lux4rd0/weatherflow-collector:latest


