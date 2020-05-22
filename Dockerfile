FROM ruby:alpine
WORKDIR /app

RUN apk update && apk add --no-cache alpine-sdk \
    nodejs \
    tzdata \
    mysql-client \
    mysql-dev

COPY Gemfile .
COPY Gemfile.lock .

RUN bundle