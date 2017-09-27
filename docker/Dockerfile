FROM github/ubuntu-dockerdev

RUN apt-get update -qq && \
    apt-get -y install \
    python3-praw

RUN apt-get -qqy install \
    inetutils-ping \
    libio-socket-ssl-perl \
    libcrypt-ssleay-perl \
    libnet-ssleay-perl \
    man

RUN cpan -i CPAN \
    Reddit::Client

RUN pip3 install --upgrade praw && \
    pip3 install --upgrade pip

# It seems installing Reddit::Client through CPAN messes up with LWP::Protocol::https
# Unfortunately Reddit::Client is not available through ubuntu packages
# and have to be installed through cpan.
# Thus installing LWP::Protocol::https after.
#RUN apt-get -qqy install liblwp-protocol-https-perl

RUN mkdir -p /opt/scripts && \
    mkdir -p /opt/config && \
    mkdir -p /opt/static

COPY scripts/* /opt/scripts/
RUN chmod a+x /opt/scripts/*

#COPY config/* /opt/config/

RUN apt-get -y install liblwp-protocol-https-perl

# Run http server on port 8080
EXPOSE  8080
WORKDIR /opt/static/
CMD ["python3", "-m", "http.server", "8080"]

#CMD ["/opt/scripts/set_up.sh", "/Users/sharmava/Github/RedditBot/"]

