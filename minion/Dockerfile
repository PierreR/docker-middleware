FROM cirb/pra

# PUPPET
ADD puppet.conf /etc/puppet/puppet.conf
#VOLUME ["/etc/puppet/environments/middleware_local"]

# BOOT
ADD supervisor-services.ini /etc/supervisord.d/services.ini
ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run
CMD ["/usr/local/bin/run"]
