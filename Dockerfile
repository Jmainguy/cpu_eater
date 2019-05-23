FROM centos:centos7
ENV version=0.1
LABEL maintainer="Jonathan Mainguy <jon@soh.re>"
RUN yum install -y epel-release
RUN yum install -y https://pulp.soh.re/pulp/repos/sohre/el7/Packages/c/cpu_eater-0.1-2.x86_64.rpm htop
CMD ["/usr/sbin/cpu_eater"]
