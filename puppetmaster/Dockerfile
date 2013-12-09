FROM cirb/pra

RUN yum -y install puppet puppet-server

# PUPPET
ADD puppet.conf /etc/puppet/puppet.conf
# create dir for middleware env
RUN mkdir -p /etc/puppet/environments/middleware_local
#VOLUME ["/etc/puppet/environments/middleware_local"]
VOLUME ["/home/vagrant/projects/jules/docker/puppetmaster/environments/middleware_local"]

# BOOT
ADD supervisor-services.ini /etc/supervisord.d/services.ini
ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run
CMD ["/usr/local/bin/run"]

EXPOSE 8140
