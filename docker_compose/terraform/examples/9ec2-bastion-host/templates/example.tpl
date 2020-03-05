#cloud-config
repo_update: true
repo_upgrade: all

runcmd:
# Install extras through cloud-init instead of Ansible, which has no module for this and reports changed every time
 - amazon-linux-extras install docker=18.06.1 -y
 - service docker start
 - usermod -a -G docker ec2-user
 - chkconfig docker on
 - curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
 - chmod +x /usr/local/bin/docker-compose
 - docker-compose version
#  - docker run -p 80:80 --name hello -d nginxdemos/hello