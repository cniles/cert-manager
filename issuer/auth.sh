#!/bin/bash

gcloud auth activate-service-account --project=$GCLOUD_PROJECT --key-file=/issuer/key.json && tail -f /dev/null
