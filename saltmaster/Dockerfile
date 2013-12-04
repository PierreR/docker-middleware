FROM centos:6.4

ADD sshd_config /etc/ssh/sshd_config

RUN rpm -Uvh http://release.irisnet.be/cirb-release6.rpm
RUN yum -y install gcc bzip2 make kernel-devel wget sudo ntp openssh-clients openssh-server perl ncurses-term 
RUN yum -y install salt-master

# SSH
ADD sshkey.pub /root/.ssh/authorized_keys
RUN chown root:root /root/.ssh/authorized_keys

# SALT MASTER
RUN mkdir /etc/salt/master.d
ADD custom.conf /etc/salt/master.d/custom.conf

# BOOTSTRAP
ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run
CMD ["/usr/local/bin/run"]

EXPOSE 4505 4506