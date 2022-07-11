FROM ruby:3.1-alpine3.15

RUN apk add --update \
    build-base \
    gcompat \
		postgresql-client \
    postgresql-dev \
    tzdata \
    && rm -rf /var/cache/apk/*

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .

CMD ["rails", "server", "-b", "0.0.0.0"]
