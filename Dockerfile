FROM ruby:3.2.0

RUN mkdir /backend
WORKDIR /backend


RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y nodejs libpq-dev postgresql-client --fix-missing --no-install-recommends

ENV RAILS_ENV production

COPY Gemfile /backend/Gemfile
COPY Gemfile.lock /backend/Gemfile.lock

RUN gem install bundler -v 2.4.1

RUN bundle install

COPY . ./

EXPOSE 3000

CMD bundle exec puma -p 3000
