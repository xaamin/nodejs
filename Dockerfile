FROM xaamin/ubuntu

MAINTAINER "Benjamín Martínez Mateos" <bmxamin@gmail.com>

# Retrieve NodeJS installer script
RUN curl -sL https://deb.nodesource.com/setup_0.12 | /bin/bash - 

# Install NodeJS 12
RUN apt-get -y update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y install nodejs \
	
	# Remove temp files	
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Add bootstrap file.
ADD start.bash /start.bash

# Add supervisor config file
ADD supervisord.conf /etc/supervisor/supervisord.conf

# Define mountable directories
VOLUME ["/app"]

# Expose ports.
EXPOSE 80 443

# Define default command.
CMD ["/bin/bash", "/start.bash"]