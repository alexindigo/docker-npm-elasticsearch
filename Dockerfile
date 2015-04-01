# alexindigo/npm-elasticsearch
FROM elasticsearch:1.4
MAINTAINER Alex Indigo <iam@alexindigo.com>

# Install head plugin
RUN       /usr/share/elasticsearch/bin/plugin --install mobz/elasticsearch-head

# Install kopf plugin
RUN       /usr/share/elasticsearch/bin/plugin --install lmenezes/elasticsearch-kopf

# Make log dir as workdir, so java error log files will be available
# for the mapping outside of the container
WORKDIR /var/log/elasticsearch

CMD ["/usr/share/elasticsearch/bin/elasticsearch"]
