FROM docker:latest

RUN apk add --no-cache curl jq python3 py3-pip && \
    pip install --upgrade awscli s3cmd python-magic && \
    apk -v --purge del py-pip

VOLUME /root/.aws
VOLUME /project
WORKDIR /project

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["sh"]
