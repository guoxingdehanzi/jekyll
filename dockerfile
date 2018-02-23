FROM ubuntu:14.04

RUN agt-get update
&& agt-get install ruby ruby-dev make nodejs
&& gem install --no-rdoc --no-ri jekyll

VOLUME /data
VOLUME /var/www/html
WORKDIR /data

ENTRYPOINT [ "jekyll", "build", "--destination=/var/www/html" ]
