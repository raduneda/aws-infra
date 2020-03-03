FROM alpine

WORKDIR /project

VOLUME /project

ARG TERRAFORM_VERSION

# Add repo modules
RUN apk add --no-cache \
    python3 \
    ca-certificates \
    bash \
    openssh \
    openssh-client \
    jq

# AWS CLI Python 3
RUN pip3 install --upgrade pip awscli boto3 \
    && echo "complete -C '/usr/bin/aws_completer' aws" >> ~/.bashrc \
    && ln -s /usr/bin/python3 /usr/bin/python

# Terraform
# Using ADD instead of COPY as we download from URL
ADD https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip /usr/bin/
RUN unzip /usr/bin/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin \
    && rm -f /usr/bin/terraform_${TERRAFORM_VERSION}_linux_amd64.zip