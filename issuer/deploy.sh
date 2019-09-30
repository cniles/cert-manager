#!/bin/bash

terraform init /deployment
terraform apply -auto-approve /deployment
