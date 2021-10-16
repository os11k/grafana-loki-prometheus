FROM grafana/grafana:8.1.5
COPY ./grafana.ini /etc/grafana/grafana.ini
CMD ["web"]
