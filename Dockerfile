FROM quay.io/ukhomeofficedigital/cfssl-sidekick:v0.0.2

LABEL maintainer="Tim.Hammonds@digital.homeoffice.gov.uk"

USER pttg

COPY scripts/trigger_nginx_reload.sh /usr/local/scripts/trigger_nginx_reload.sh
RUN chmod +x /usr/local/scripts/trigger_nginx_reload.sh
