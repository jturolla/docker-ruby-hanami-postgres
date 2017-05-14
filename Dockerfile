FROM ruby:2.4.1-alpine

RUN apk add --update \
    build-base libxml2-dev libxslt-dev libstdc++ tzdata openssl-dev \
    libc-dev linux-headers curl-dev ruby-json bash postgresql-dev postgresql && \
    gem install bundler && \
    rm -rf /var/cache/apk/*