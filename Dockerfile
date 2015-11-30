FROM daocloud.io/rails

RUN gem source -r https://rubygems.org/
RUN gem source -a https://ruby.taobao.org/

ENV RAILS_VERSION 4.2.5

RUN gem install rails --version "$RAILS_VERSION"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle install

COPY . /usr/src/app

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]