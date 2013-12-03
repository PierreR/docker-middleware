FROM centos:6.4

ADD sshd_config /etc/ssh/sshd_config

RUN rpm -Uvh http://release.irisnet.be/cirb-release6.rpm
RUN yum -y install gcc bzip2 make kernel-devel wget sudo openssh-clients openssh-server crontabs ncurses-term
RUN yum -y install puppet puppet-server

# SSH
ADD sshkey.pub /root/.ssh/authorized_keys
RUN chown root:root /root/.ssh/authorized_keys

# PUPPET
ADD puppet.conf /etc/puppet/puppet.conf
# create dir for middleware env
RUN mkdir -p /etc/puppet/environments/middleware_local
#VOLUME ["/etc/puppet/environments/middleware_local"]

# BOOT
ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run
CMD ["/usr/local/bin/run"]

EXPOSE 8140
