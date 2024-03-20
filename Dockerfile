# syntax = docker/dockerfile:1

ARG RUBY_VERSION=2.7.0
FROM ruby:$RUBY_VERSION as base

# Install essential packages
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs

# Set working directory
WORKDIR /rails

# Set environment variables
ENV RAILS_ENV="development" \
    BUNDLE_DEPLOYMENT="1" \
    BUNDLE_PATH="/usr/local/bundle" \
    BUNDLE_WITHOUT="production"

# Copy Gemfile and Gemfile.lock and install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Second stage for PostgreSQL setup
FROM base

# Install PostgreSQL
RUN apt-get update && apt-get install -y postgresql postgresql-contrib

# Create a new unprivileged user 'postgres' with UID/GID 1000
RUN useradd -r -u 1000 postgres

# Change ownership of PostgreSQL data directory to the newly created user
RUN chown -R postgres:postgres /var/lib/postgresql/data

# Switch to the 'postgres' user
USER postgres

# Set the working directory back to /rails
WORKDIR /rails

# Expose port 3000 for Rails server
EXPOSE 3000

# Command to start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]