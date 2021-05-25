FROM ruby:2.7.1

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    imagemagick \
    nodejs \
    npm \
&&  npm install n -g \
&&  n 12.18.0 \
&&  npm rebuild node-sass \
&&  apt-get clean \
&&  rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    apt-transport-https \
    wget \
&&  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
&&  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
&&  apt-get update && apt-get install -y --no-install-recommends \
    yarn \
&&  apt-get clean \
&&  rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y --no-install-recommends \
    unzip \
&&  CHROME_DRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE` \
&&  wget -N http://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip -P ~/ \
&&  unzip ~/chromedriver_linux64.zip -d ~/ \
&&  rm ~/chromedriver_linux64.zip \
&&  chown root:root ~/chromedriver \
&&  chmod 755 ~/chromedriver \
&&  mv ~/chromedriver /usr/bin/chromedriver \
&&  sh -c 'wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -' \
&&  sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' \
&&  apt-get update && apt-get install -y --no-install-recommends \
    google-chrome-stable \
&&  apt-get clean \
&&  rm -rf /var/lib/apt/lists/*

RUN mkdir /cocktail-hub
ENV APP_ROOT /cocktail-hub
WORKDIR $APP_ROOT

COPY Gemfile /$APP_ROOT/Gemfile
COPY Gemfile.lock /$APP_ROOT/Gemfile.lock

RUN bundle install
COPY . $APP_ROOT
