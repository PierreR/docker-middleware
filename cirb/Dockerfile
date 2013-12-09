FROM centos:6.4

ADD sshd_config /etc/ssh/sshd_config

RUN rpm -Uvh http://release.irisnet.be/cirb-release6.rpm
RUN yum -y install gcc bzip2 make kernel-devel wget sudo openssh-clients openssh-server ncurses-term
RUN yum -y install supervisor python-pip

# ssh
ADD sshkey.pub /root/.ssh/authorized_keys
RUN chown root:root /root/.ssh/authorized_keys
RUN ssh-keygen -b 1024 -t rsa -f /etc/ssh/ssh_host_key
RUN ssh-keygen -b 1024 -t rsa -f /etc/ssh/ssh_host_rsa_key 
RUN ssh-keygen -b 1024 -t dsa -f /etc/ssh/ssh_host_dsa_key

