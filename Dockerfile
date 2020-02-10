From ringcentral/jdk

MAINTAINER ="Atos"

LABEL "customized"="Customization image for gitlab using with apache2 service"

ARG SSL_KEYSTORE_PASSWORD

USER root

RUN apt-get update  

CMD ["-g"]