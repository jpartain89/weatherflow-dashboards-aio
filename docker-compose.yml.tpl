version: '3.3'
services:
  wxfdashboardsaio_influxdb:
    container_name: wxfdashboardsaio_influxdb
    environment:
      TZ: America/Chicago
      INFLUXDB_ADMIN_PASSWORD: op://dev/WeatherFlowDashboards/INFLUXDB/INFLUXDB_ADMIN_PASSWORD
      INFLUXDB_ADMIN_USER: op://dev/WeatherFlowDashboards/INFLUXDB/INFLUXDB_ADMIN_USER
      INFLUXDB_DATA_ENGINE: tsm1
      INFLUXDB_DB: weatherflow
      INFLUXDB_HTTP_LOG_ENABLED: "false"
      INFLUXDB_LOGGING_FORMAT: json
      INFLUXDB_LOGGING_LEVEL: info
      INFLUXDB_MONITOR_STORE_DATABASE: _internal
      INFLUXDB_MONITOR_STORE_ENABLED: "true"
      INFLUXDB_REPORTING_DISABLED: "true"
      INFLUXDB_USER: op://dev/WeatherFlowDashboards/INFLUXDB/INFLUXDB_USER
      INFLUXDB_USER_PASSWORD: op://dev/WeatherFlowDashboards/INFLUXDB/INFLUXDB_USER_PASSWORD
    image: influxdb:1.8
    ports:
      - protocol: tcp
        published: 8086
        target: 8086
    restart: always
    volumes:
      - /media/ext2/weatherflow/influxdb:/var/lib/influxdb:rw
    networks:
      - default
      - 'grafana-external'

  wxfdashboardsaio-collector:
    container_name: wxfdashboardsaio-collector-08ce4425
    environment:
      TZ: America/Chicago
      WEATHERFLOW_COLLECTOR_DEBUG: "false"
      WEATHERFLOW_COLLECTOR_DEBUG_CURL: "false"
      WEATHERFLOW_COLLECTOR_DISABLE_HEALTH_CHECK: "false"
      WEATHERFLOW_COLLECTOR_DISABLE_HOST_PERFORMANCE: "false"
      WEATHERFLOW_COLLECTOR_DISABLE_LOCAL_UDP: "false"
      WEATHERFLOW_COLLECTOR_DISABLE_REMOTE_FORECAST: "false"
      WEATHERFLOW_COLLECTOR_DISABLE_REMOTE_REST: "false"
      WEATHERFLOW_COLLECTOR_DISABLE_REMOTE_SOCKET: "false"
      WEATHERFLOW_COLLECTOR_HEALTHCHECK: "true"
      WEATHERFLOW_COLLECTOR_HOST_HOSTNAME: jpserver.jpcdi.com
      WEATHERFLOW_COLLECTOR_INFLUXDB_PASSWORD: op://dev/WeatherFlowDashboards/COLLECTOR/WEATHERFLOW_COLLECTOR_INFLUXDB_PASSWORD
      WEATHERFLOW_COLLECTOR_INFLUXDB_URL: http://wxfdashboardsaio_influxdb:8086/write?db=weatherflow
      WEATHERFLOW_COLLECTOR_INFLUXDB_USERNAME: op://dev/WeatherFlowDashboards/COLLECTOR/WEATHERFLOW_COLLECTOR_INFLUXDB_USERNAME
      WEATHERFLOW_COLLECTOR_TOKEN: op://dev/WeatherFlowDashboards/COLLECTOR/WEATHERFLOW_COLLECTOR_TOKEN
    restart: always
    depends_on:
      - "wxfdashboardsaio_influxdb"
    image: lux4rd0/weatherflow-collector:latest
    ports:
    - protocol: udp
      published: 50222
      target: 50222
    restart: always

networks:
  default:
  grafana-external:
    name: grafana-external
