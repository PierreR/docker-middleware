FROM cirb/pra

# SALT MASTER
RUN yum -y install salt-master ipython
RUN mkdir /etc/salt/master.d
ADD custom.conf /etc/salt/master.d/custom.conf
RUN useradd -p '$6$aWEdArpE$vXUfq8X8JzTl5ilkV6xl1p0eSkuxstpNyCIzLWhtFotEZ2uPuSPT3MpyBo6ig1q9nQq3BkFMj55Yrh4DOSTVX1' vagrant

# HALITE
RUN yum -y install python-paste
RUN pip install halite

# SUPERVISOR
ADD supervisor-services.ini /etc/supervisord.d/services.ini

EXPOSE 4505 4506 8080