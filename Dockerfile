FROM ruby:2.6.6-alpine
RUN apk -U add --no-cache build-base postgresql-dev postgresql-client libxml2-dev
RUN rm -rf /var/cache/apk/*
RUN mkdir -p /myapp
ADD . /myapp
RUN gem install bundler
WORKDIR /myapp
RUN bundle install
EXPOSE 3000
