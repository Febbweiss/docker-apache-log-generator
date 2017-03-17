FROM python:2.7.13

USER root

RUN apt-get clean && apt-get update \
	&& apt-get install -y build-essential unzip \
	&& wget -O Fake-Apache-Log-Generator.zip https://github.com/febbweiss/Fake-Apache-Log-Generator/archive/master.zip \
	&& unzip Fake-Apache-Log-Generator.zip \
	&& mv Fake-Apache-Log-Generator-master /fake-apache-log-generator \
	&& rm Fake-Apache-Log-Generator.zip \
	&& cd fake-apache-log-generator \
	&& pip install -r requirements.txt \
	&& apt-get clean \
    && rm -rf /var/lib/apt/listss/* /tmp/* /var/tmp/* \
	&& mkdir -p /var/log/apache
	
WORKDIR /fake-apache-log-generator

CMD ["python", "apache-fake-log-gen.py", "-o", "LOG", "-p", "/var/log/apache/apache", "-n", "0", "-s", "3"]