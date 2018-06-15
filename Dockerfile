FROM centos:centos7
LABEL maintainer="Jonathan Mainguy <jon@soh.re>"
RUN yum install -y https://pulp.soh.re/pulp/repos/sohre/el7/Packages/c/cpu_eater-0.1-2.x86_64.rpm
CMD ["/usr/sbin/cpu_eater"]
