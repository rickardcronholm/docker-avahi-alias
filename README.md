# docker-avahi-alias
mdns/avahi cnames with docker

This project is orginally forked from [flqw/docker-avahi-alias](https://github.com/flqw/docker-avahi-alias).
Changes include;
1. Switched base image to debian:buster-slim
2. Added funtionality to either read cnames from file or from sys args
3. Aligned original scrript witht PEP8


# Build image
```
git clone https://github.com/rickardcronholm/docker-avahi-alias.git
cd docker-avahi-alias
docker build -t your_tag_name .
```

# Usage
Uses the host dbus socket to add avahi cname records.

To run specifying cnames from cli args
```
docker run --privileged -d -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket \
rickardcronholm/docker-avahi-alias:latest \
-s hostname.local hostname2.local hostname3.local ...
```

To run specifying cnames from file
```
docker run --privileged -d -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket \
-v filename:filename rickardcronholm/docker-avahi-alias:latest \
-f filename
```
Note that the filename specified as the input parameter shall be the path to the file inside the container
