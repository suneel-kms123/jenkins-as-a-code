FROM ansible/ubuntu14.04-ansible:stable

RUN apt-get -y update
RUN apt-get install -y python-yaml python-jinja2 git
RUN git clone http://github.com/ansible/ansible.git /tmp/ansible
WORKDIR /tmp/ansible
ENV PATH /tmp/ansible/bin:/sbin:/usr/sbin:/usr/bin
ENV ANSIBLE_LIBRARY /tmp/ansible/library
ENV PYTHONPATH /tmp/ansible/lib:$PYTHON_PATH
RUN ansible-playbook site.yml -c local
