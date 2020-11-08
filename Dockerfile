FROM ruby:2.6
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs
RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
apt-get update && apt-get install -y yarn

WORKDIR /rails_vue_sample
COPY Gemfile Gemfile.lock /rails_vue_sample/
RUN bundle install