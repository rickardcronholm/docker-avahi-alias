FROM debian:buster-slim

RUN apt-get update && \
    apt-get install -y python-avahi && \
    apt-get install -y libdbus-glib-1-2 && \
    rm -rf /var/lib/apt/lists/*

COPY ./avahi_alias.py /usr/local/bin/avahi_alias
RUN chmod +x /usr/local/bin/avahi_alias

ENTRYPOINT ["avahi_alias"]
