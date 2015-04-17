# This is a registered RHEL7 image - sub manager enabled
FROM registry-kayrock.rhcloud.com/rhel71_updates 

MAINTAINER "Glen Millard <gmillard@redhat.com>"

# Adding the MariaDB-Enterprise repo file
ADD MariaDB-Enterprise.repo /etc/yum.repos.d/MariaDB-Enterprise.repo

# Connect string - I used this as an example - modify the file as you need to 
ADD connect2db.sh /home/connect2db.sh

RUN yum -y update; yum clean all

#Since this is the container for the client only, no need to install the server
RUN yum -y install MariaDB-client.x86_64

#This container's life purpose is to connect to the MariaDB server.
ENTRYPOINT /home/connect2db.sh

#ENTRYPOINT echo 'we are running some # of cool things here at Redhat!'
