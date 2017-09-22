FROM github/ubuntu-dockerdev

RUN apt-get update -qq

RUN apt-get -qqy install \
    python3-praw

RUN apt-get -qqy install \
    inetutils-ping \
    man

RUN cpan -i CPAN \
    Reddit::Client

RUN mkdir -p /opt/scripts

COPY scripts/* /opt/scripts/

RUN chmod a+x /opt/scripts/*
