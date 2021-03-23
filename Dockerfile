FROM ruby:2
WORKDIR /usr/src/app

COPY . .
RUN gem install json
RUN gem install sinatra

EXPOSE 80

CMD [ "ruby", "app.rb" ]
