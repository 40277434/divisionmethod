FROM ruby:2
WORKDIR /usr/src/app
RUN gem install json
RUN gem install sinatra
COPY . .
EXPOSE 80

CMD ruby app.rb