# NAME: fahchen/elasticsearch-analysis-ik

FROM elasticsearch:6.4.2

MAINTAINER Phil Chen '06fahchen@gmail.com'

ENV VERSION=6.4.2

ADD https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v${VERSION}/elasticsearch-analysis-ik-$VERSION.zip /tmp/
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch file:///tmp/elasticsearch-analysis-ik-$VERSION.zip

RUN rm -rf /tmp/*
