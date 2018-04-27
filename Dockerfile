FROM quay.io/ukhomeofficedigital/cfssl-sidekick:v0.0.5

LABEL maintainer="Tim.Hammonds@digital.homeoffice.gov.uk"

USER root

COPY scripts/trigger_nginx_reload.sh /usr/local/scripts/trigger_nginx_reload.sh
RUN chmod +x /usr/local/scripts/trigger_nginx_reload.sh

USER sidekick

ENTRYPOINT [ "/cfssl-sidekick" ]
