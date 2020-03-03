### Running example
* docker build --build-arg TERRAFORM_VERSION=0.12.20 --tag parametrized_infra .
* docker run --rm -it --name parametrized_infra parametrized_infra /bin/sh