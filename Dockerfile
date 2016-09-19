FROM ruby:2.3.1
MAINTAINER Stuart Auld <sja@marsupialmusic.net>
ENV REFRESHED_AT 2016-09-19

# prepare the app directory
RUN mkdir /app

# Heroku does not run as root - run as bob instead
RUN useradd bob
RUN chown bob /app
USER bob

# Bundle
WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN bundle install -j 8

# Copy repository
COPY . /app

# expose for local development
EXPOSE 9292

# ENV variables aren't resolved in the proper CMD format
CMD bundle exec rackup -o 0.0.0.0 -p ${PORT:-9292}
