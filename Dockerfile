FROM cloyne/php

MAINTAINER Mitar <mitar.docker@tnode.com>

RUN apt-get update -q -q && \
 apt-get install phppgadmin --yes --force-yes && \
 apt-get install postgresql-client-9.3 --no-install-recommends --yes --force-yes && \
 sed -i 's/.*<h1>.*<\/h1>.*//' /usr/share/phppgadmin/intro.php

COPY ./etc /etc
