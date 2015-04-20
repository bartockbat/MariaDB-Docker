# This is a registered RHEL7 image - sub manager enabled
FROM registry-kayrock.rhcloud.com/rhel71_updates 

MAINTAINER "Glen Millard <gmillard@redhat.com>"

# Adding the MariaDB-Enterprise repo file
ADD MariaDB-Enterprise.repo /etc/yum.repos.d/MariaDB-Enterprise.repo

RUN yum -y update; yum clean all

#Since this is the container for the client only, no need to install the server
RUN yum -y install MariaDB-server.x86_64

#ENTRYPOINT echo 'we are running some # of cool things here at Redhat!'
