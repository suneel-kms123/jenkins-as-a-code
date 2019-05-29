FROM ansible/ubuntu14.04-ansible:stable

ADD ansible /srv/example
WORKDIR /srv/example

# Execute Ansible with your playbook's primary entry point.
# The "-c local" argument causes Ansible to use a "local connection" that won't attempt to
# ssh in to localhost.
RUN ansible-playbook site.yml -c local
