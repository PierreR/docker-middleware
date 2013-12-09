FROM cirb/pra

# SALT MASTER
RUN yum -y install salt-master
RUN mkdir /etc/salt/master.d
ADD custom.conf /etc/salt/master.d/custom.conf

# HALITE
RUN yum -y install python-paste
RUN pip install halite

# SUPERVISOR
ADD supervisor-services.ini /etc/supervisord.d/services.ini

EXPOSE 4505 4506 8080