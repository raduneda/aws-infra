### Running example
* docker build --tag simple_infra .
* docker run --rm -it --name simple_infra simple_infra /bin/sh
* docker run --rm -it --volume "$(pwd):/project" --name simple_infra simple_infra /bin/sh