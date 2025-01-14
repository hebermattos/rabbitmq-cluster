FROM rabbitmq:3-management-alpine

RUN apk --no-cache add python3

ADD entrypoint.py /usr/local/bin/entrypoint.py
RUN chmod a+x /usr/local/bin/entrypoint.py

ENTRYPOINT ["/usr/local/bin/entrypoint.py"]