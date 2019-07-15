FROM ruby:2.5.5-alpine
RUN apk update
RUN apk upgrade
RUN apk add --no-cache g++ musl-dev make libstdc++
WORKDIR /var/tmp/builder
COPY . .
RUN gem install bundler
RUN bundle install
CMD bundle exec puma
