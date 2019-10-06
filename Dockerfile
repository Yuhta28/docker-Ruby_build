#Use Ruby-image from Public DockerSite
FROM ruby:2.6.1-stretch

#Directory to place Application
WORKDIR /app

#Install gem by Bundler
COPY Gemfile Gemfile.lock ./
RUN bundle install

#exec ENTRYPOINT
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

#copy Application file
COPY . ./

#configure command and ports to exec server
CMD ["ruby", "app.rb", "-o", "0.0.0.0"]
EXPOSE 4567
