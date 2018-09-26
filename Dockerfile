FROM ruby:2.4.1

ENV APP_ROOT /usr/local/src
WORKDIR $APP_ROOT

RUN apt-get update && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    curl -sL https://deb.nodesource.com/setup_9.x | bash && \
    # curl https://cli-assets.heroku.com/install.sh | sh && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

COPY . $APP_ROOT

RUN echo 'gem: --no-document' >> ~/.gemrc && \
    bundle config --global jobs 4 && \
    bundle install && \
    rm -rf ~/.gem && \
    rm -rf ./dbin

EXPOSE 3000
