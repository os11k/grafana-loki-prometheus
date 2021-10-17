grafana-with-prometheus
============

This are docker-compose files for running grafana and prometheus from official docker images, I put latest version on this moment, but you can update those just simple editing docker-compose.yml and Dockerfile.

This setup I use by myself to monitor my Cardano nodes. If you are here for same, just update `./etc-prometheus/prometheus.yml` with your proper hostnames and run those 5 commands.

I assume you have node exporter running on relays and producers. From grafana server you can check it by runnig `curl destination:9100/metrics` for node exportor and curl `destination:12798/metrics` for relay/producer.

Grafana can be accessible by `yourserverip:3000`

Please don't forget to secure your server with iptables.

# usage
```
apt-get update && apt-get upgrade -y && apt-get install docker-compose -y
mkdir /docker && cd /docker
git clone https://github.com/os11k/grafana-with-prometheus.git
cd ./grafana-with-prometheus/
docker-compose up -d --build
```
