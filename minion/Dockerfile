FROM centos:6.4

ADD sshd_config /etc/ssh/sshd_config
ADD puppet.conf /etc/puppet/puppet.conf
ADD run_puppet.sh /usr/local/bin/run_puppet.sh
#ADD ntp.conf /etc/ntp.conf

RUN rpm -Uvh http://release.irisnet.be/cirb-release6.rpm
RUN yum -y install gcc bzip2 make kernel-devel wget sudo ntp openssh-clients perl crontabs ncurses-term vim-enhanced
RUN yum -y install puppet salt-minion
#RUN chkconfig ntpd on
# create dir for middleware env
#RUN mkdir -p /etc/puppet/environments/middleware_local

#VOLUME ["/etc/puppet/environments/middleware_local"]
#CMD ["/usr/local/bin/run"]
RUN chmod +x /usr/local/bin/run_puppet.sh

