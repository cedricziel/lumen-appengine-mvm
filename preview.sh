#!/usr/bin/env bash

python2 $HOME/google-cloud-sdk/bin/dev_appserver.py \
    --custom_entrypoint="php artisan serve \
    --port {port}" \
    --mysql_host=127.0.0.1 \
    --mysql_port=33060 \
    --mysql_user=appappapp \
    --mysql_password=appappapp \
    --storage_path="./.appengine" \
    app.yaml
