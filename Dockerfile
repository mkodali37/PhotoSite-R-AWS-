FROM ruby:2.7.2-alpine
RUN apk update && apk add build-base ruby-full yarn nodejs sqlite-dev

RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install

ENV RAILS_ENV production

COPY . .

CMD rake db:migrate RAILS_ENV=production assets:precompile && rails server
