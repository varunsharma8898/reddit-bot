FROM github/ubuntu-dockerdev

RUN apt-get update -qq

RUN apt-get -qqy install \
    python3-praw

RUN apt-get -qqy install \
    inetutils-ping \
    libio-socket-ssl-perl \
    libcrypt-ssleay-perl \
    libnet-ssleay-perl \
    man

RUN cpan -i CPAN \
    Reddit::Client

# It seems installing Reddit::Client through CPAN messes up with LWP::Protocol::https
# Unfortunately Reddit::Client is not available through ubuntu packages
# and have to be installed through cpan.
# Thus installing LWP::Protocol::https after.
#RUN apt-get -qqy install liblwp-protocol-https-perl

RUN mkdir -p /opt/scripts && \
    mkdir -p /opt/config


COPY scripts/* /opt/scripts/
RUN chmod a+x /opt/scripts/*

#COPY config/* /opt/config/

RUN apt-get -qqy install liblwp-protocol-https-perl

RUN apt-get -qqy install python3-pip

#RUN /opt/scripts/set_up.sh /Users/sharmava/Github/RedditBot/
