FROM ansible/ubuntu14.04-ansible:stable

RUN apt-get -y update
RUN apt-get install --assume-yes python
RUN apt-get install --assume-yes git
RUN apt-get install --assume-yes maven
RUN apt-get install --assume-yes ssh
RUN apt-get install --assume-yes default-jdk
RUN apt-get install --assume-yes curl
git clone ssh://sdnbld@gerrit.ericsson.se:29418/ODL/E_netvirt
mvn clean install 
