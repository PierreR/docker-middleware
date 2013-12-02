FROM centos:6.4

ADD sshd_config /etc/ssh/sshd_config
ADD puppet.conf /etc/puppet/puppet.conf
ADD sshkey.pub /root/.ssh/authorized_keys
#ADD ntp.conf /etc/ntp.conf

RUN rpm -Uvh http://release.irisnet.be/cirb-release6.rpm
RUN yum -y install gcc bzip2 make kernel-devel wget sudo ntp openssh-clients openssh-server perl crontabs ncurses-term vim-enhanced
RUN yum -y install puppet puppet-server
#RUN chkconfig ntpd on
# create dir for middleware env

RUN mkdir -p /etc/puppet/environments/middleware_local

#VOLUME ["/etc/puppet/environments/middleware_local"]
#CMD ["/usr/local/bin/run"]
#RUN chmod +x /usr/local/bin/run

RUN chown root:root /root/.ssh/authorized_keys
RUN ssh-keygen -b 1024 -t rsa -f /etc/ssh/ssh_host_key
RUN ssh-keygen -b 1024 -t rsa -f /etc/ssh/ssh_host_rsa_key 
RUN ssh-keygen -b 1024 -t dsa -f /etc/ssh/ssh_host_dsa_key

EXPOSE 22
EXPOSE 8140