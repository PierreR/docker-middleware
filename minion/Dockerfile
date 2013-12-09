FROM cirb/pra

# EXTRA PACKAGES
RUN yum -y install dnsmasq puppet salt-minion

# PUPPET
ADD puppet.conf /etc/puppet/puppet.conf
#VOLUME ["/etc/puppet/environments/middleware_local"]

# DNSMASQ
RUN echo 'no-resolv' >> /etc/dnsmasq.conf
RUN echo 'no-poll' >> /etc/dnsmasq.conf
RUN echo 'interface=lo' >> /etc/dnsmasq.conf
RUN echo 'no-dhcp-interface=lo' >> /etc/dnsmasq.conf
RUN echo 'conf-dir=/etc/dnsmasq.d' >> /etc/dnsmasq.conf

# BOOT
ADD supervisor-services.ini /etc/supervisord.d/services.ini
ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run
CMD ["/usr/local/bin/run"]
