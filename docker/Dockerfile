FROM github/vsharma-dockerdev

RUN yum -y update && \
    yum -y install mysql-connector-python

RUN pip3.6 install pymysql

RUN mkdir /opt/scripts
#COPY ../bin/* /opt/scripts
