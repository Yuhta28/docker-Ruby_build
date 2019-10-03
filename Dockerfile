#Use Ruby-image from Public DockerSite
FROM ruby:2.6.1-stretch

#Directory to place Application
WORKDIR /app

#Install gem by Bundler
COPY Gemfile Gemfile.lock ./
RUN bundle install
