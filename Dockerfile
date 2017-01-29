FROM centos:6
MAINTAINER dockerapp

WORKDIR /tmp
RUN yum -y update && yum -y install perl gcc && yum clean all
RUN curl -O http://www.pro-bono-publico.de/projects/src/DEVEL.201611061407.tar.bz2 && tar xjf DEVEL.201611061407.tar.bz2
WORKDIR /tmp/PROJECTS/
RUN ./configure && make && make install && cp tac_plus/sample/tac_plus.cfg /usr/local/etc/
WORKDIR /
RUN rm -rf /tmp/* && yum -y --setopt=clean_requirements_on_remove=1 remove gcc perl && yum clean all

CMD ["/usr/local/sbin/tac_plus", "-f", "/usr/local/etc/tac_plus.cfg"]
