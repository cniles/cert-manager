#!/bin/bash

if [ ! -f /root/.acme.sh/acme.sh ]
then
    curl https://get.acme.sh | sh
fi

export LE_WORKING_DIR="/root/.acme.sh"

/root/.acme.sh/acme.sh --issue --force --dns dns_gcloud -d dev.imageroulette.cniles.dev -d api.dev.imageroulette.cniles.dev

/root/.acme.sh/acme.sh --issue --force --dns dns_aws -d randomreids.com -d api.randomreids.com -d www.randomreids.com
