# set alpine as the base image of the Dockerfile
FROM alpine:latest

# update the package repository and install Tor
RUN apk update && apk add rsync

COPY rsyncd.conf /etc/rsyncd.conf

EXPOSE 873

# Set `tor` as the entrypoint for the image
ENTRYPOINT ["rsync"]

CMD ["--no-detach", "--daemon"]

