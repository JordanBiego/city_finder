# syntax = docker/dockerfile:1

ARG RUBY_VERSION=2.7.0
FROM ruby:$RUBY_VERSION as base

WORKDIR /rails

ENV RAILS_ENV="development" \
    BUNDLE_DEPLOYMENT="1" \
    BUNDLE_PATH="/usr/local/bundle" \
    BUNDLE_WITHOUT="production"

RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs

COPY . .

RUN bundle install --gemfile /rails/Gemfile

FROM base

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

COPY . .

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]