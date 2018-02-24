FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install ruby ruby-dev make nodejs
RUN gem install --no-rdoc --no-ri jekyll

VOLUME /data
VOLUME /var/www/html
WORKDIR /data

ENTRYPOINT [ "jekyll", "build", "--destination=/var/www/html" ]
