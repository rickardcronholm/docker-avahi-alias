FROM debian:buster-slim

RUN apt-get update && \
    apt-get install -y python-avahi && \
    rm -rf /var/lib/apt/lists/*

COPY ./avahi_alias.py /usr/local/bin/avahi_alias
RUN chmod +x /usr/local/bin/avahi_alias

ENTRYPOINT ["avahi_alias"]
