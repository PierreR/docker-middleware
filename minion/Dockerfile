FROM centos:6.4

ADD sshd_config /etc/ssh/sshd_config

RUN rpm -Uvh http://release.irisnet.be/cirb-release6.rpm
RUN yum -y install gcc bzip2 make kernel-devel wget sudo openssh-clients openssh-server ncurses-term
# RUN yum -y install perl crontabs vim-enhanced ntp
RUN yum -y install puppet salt-minion

# SSH
ADD sshkey.pub /root/.ssh/authorized_keys
RUN chown root:root /root/.ssh/authorized_keys
RUN ssh-keygen -b 1024 -t rsa -f /etc/ssh/ssh_host_key
RUN ssh-keygen -b 1024 -t rsa -f /etc/ssh/ssh_host_rsa_key 
RUN ssh-keygen -b 1024 -t dsa -f /etc/ssh/ssh_host_dsa_key

# PUPPET
ADD puppet.conf /etc/puppet/puppet.conf
ADD run_puppet.sh /usr/local/bin/run_puppet.sh
# create dir for middleware env
#RUN mkdir -p /etc/puppet/environments/middleware_local
#VOLUME ["/etc/puppet/environments/middleware_local"]
RUN chmod +x /usr/local/bin/run_puppet.sh

# DNS MASK
RUN yum -y install bind-utils dnsmasq

RUN echo 'no-resolv' >> /etc/dnsmasq.conf
RUN echo 'no-poll' >> /etc/dnsmasq.conf
RUN echo 'interface=lo' >> /etc/dnsmasq.conf
RUN echo 'no-dhcp-interface=lo' >> /etc/dnsmasq.conf
RUN echo 'conf-dir=/etc/dnsmasq.d' >> /etc/dnsmasq.conf

# SALT
#RUN mkdir /etc/salt/minion.d

# BOOT
ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run
CMD ["/usr/local/bin/run"]
