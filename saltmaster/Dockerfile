FROM cirb/pra

# SALT MASTER
RUN yum -y install salt-master ipython
RUN mkdir /etc/salt/master.d
ADD custom.conf /etc/salt/master.d/custom.conf
RUN useradd -p '$6$aWEdArpE$vXUfq8X8JzTl5ilkV6xl1p0eSkuxstpNyCIzLWhtFotEZ2uPuSPT3MpyBo6ig1q9nQq3BkFMj55Yrh4DOSTVX1' vagrant


# REDIS
RUN yum -y install redis

# HALITE
RUN yum -y install python-paste nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN pip install halite
ADD nginx-halite.conf /etc/nginx/conf.d/halite.conf


# IPython
RUN yum -y remove ipython
RUN pip install tornado ipython
RUN ipython create profile salt
ADD ipython_notebook_config.py /root/.ipython/profile_salt/ipython_notebook_config.py
ADD ipython-salt.pem /etc/ssl/certs/salt.pem
# SUPERVISOR
ADD supervisor-services.ini /etc/supervisord.d/services.ini

EXPOSE 4505 4506 8080 8888