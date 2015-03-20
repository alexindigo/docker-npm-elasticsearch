# alexindigo/npm-elasticsearch
FROM elasticsearch:latest
MAINTAINER Alex Indigo <iam@alexindigo.com>

# Install head plugin
RUN       /usr/share/elasticsearch/bin/plugin --install mobz/elasticsearch-head

# Install kopf plugin
RUN       /usr/share/elasticsearch/bin/plugin --install lmenezes/elasticsearch-kopf

CMD ["/usr/share/elasticsearch/bin/elasticsearch"]
