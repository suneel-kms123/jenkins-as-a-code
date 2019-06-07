FROM ansible/ubuntu14.04-ansible:stable

RUN apt-get -y update
RUN apt-get install --assume-yes python
RUN apt-get install --assume-yes git
RUN apt-get install --assume-yes maven
RUN apt-get install --assume-yes ssh
RUN apt-get install --assume-yes default-jdk
RUN apt-get install --assume-yes curl
RUN git clone https://equubbg:june_123@gerrit.ericsson.se/a/ODL/E_netvirt
COPY sdnc-maven-sfi-oxygen /home
RUN mvn clean install -s /home/sdnc-maven-sfi-oxygen
