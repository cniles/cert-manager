FROM debian:buster

RUN apt-get update && apt-get upgrade -y

RUN apt-get install cron gnupg curl unzip -y

RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - && apt-get update -y && apt-get install google-cloud-sdk -y

RUN curl https://releases.hashicorp.com/terraform/0.12.9/terraform_0.12.9_linux_amd64.zip | funzip > /bin/terraform
RUN chmod +x /bin/terraform

