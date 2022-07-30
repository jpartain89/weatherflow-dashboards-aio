TZ=America/Chicago
INFLUXDB_ADMIN_PASSWORD=op://dev/WeatherFlowDashboards/INFLUXDB/INFLUXDB_ADMIN_PASSWORD
INFLUXDB_ADMIN_USER=op://dev/WeatherFlowDashboards/INFLUXDB/INFLUXDB_ADMIN_USER
INFLUXDB_DATA_ENGINE=tsm1
INFLUXDB_DB=weatherflow
INFLUXDB_HTTP_LOG_ENABLED="true"
INFLUXDB_LOGGING_FORMAT=json
INFLUXDB_LOGGING_LEVEL=info
INFLUXDB_MONITOR_STORE_DATABASE=_internal
INFLUXDB_MONITOR_STORE_ENABLED="true"
INFLUXDB_REPORTING_DISABLED="false"
INFLUXDB_USER=op://dev/WeatherFlowDashboards/INFLUXDB/INFLUXDB_USER
INFLUXDB_USER_PASSWORD=op://dev/WeatherFlowDashboards/INFLUXDB/INFLUXDB_USER_PASSWORD
WEATHERFLOW_COLLECTOR_DEBUG="true"
WEATHERFLOW_COLLECTOR_DEBUG_CURL="false"
WEATHERFLOW_COLLECTOR_DISABLE_HEALTH_CHECK="false"
WEATHERFLOW_COLLECTOR_DISABLE_HOST_PERFORMANCE="false"
WEATHERFLOW_COLLECTOR_DISABLE_LOCAL_UDP="false"
WEATHERFLOW_COLLECTOR_DISABLE_REMOTE_FORECAST="false"
WEATHERFLOW_COLLECTOR_DISABLE_REMOTE_REST="false"
WEATHERFLOW_COLLECTOR_DISABLE_REMOTE_SOCKET="false"
WEATHERFLOW_COLLECTOR_HEALTHCHECK="true"
WEATHERFLOW_COLLECTOR_HOST_HOSTNAME=jpserver
WEATHERFLOW_COLLECTOR_COLLECTOR_TYPE='local-udp remote-forcast remote-rest remote-import remote-socket host-performance'
WEATHERFLOW_COLLECTOR_FUNCTION='collector import'
WEATHERFLOW_COLLECTOR_INFLUXDB_PASSWORD=op://dev/WeatherFlowDashboards/COLLECTOR/WEATHERFLOW_COLLECTOR_INFLUXDB_PASSWORD
WEATHERFLOW_COLLECTOR_INFLUXDB_URL=http://wxfdashboardsaio_influxdb:8086/write?db=weatherflow
WEATHERFLOW_COLLECTOR_INFLUXDB_USERNAME=op://dev/WeatherFlowDashboards/COLLECTOR/WEATHERFLOW_COLLECTOR_INFLUXDB_USERNAME
WEATHERFLOW_COLLECTOR_TOKEN=op://dev/WeatherFlowDashboards/COLLECTOR/WEATHERFLOW_COLLECTOR_TOKEN
WEATHERFLOW_COLLECTOR_DISABLE_HEALTHCHECK_LOCAL_UDP="false"
WEATHERFLOW_COLLECTOR_DISABLE_HEALTHCHECK_HOST_PERFORMANCE="false"
WEATHERFLOW_COLLECTOR_DISABLE_HEALTHCHECK_REMOTE_FORECAST="false"
WEATHERFLOW_COLLECTOR_DISABLE_HEALTHCHECK_REMOTE_REST="false"
WEATHERFLOW_COLLECTOR_DISABLE_HEALTHCHECK_REMOTE_SOCKET="false"
WEATHERFLOW_COLLECTOR_DOCKER_HEALTHCHECK_ENABLED=true
WEATHERFLOW_COLLECTOR_THREADS=10
