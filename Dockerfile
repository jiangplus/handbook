FROM daocloud.io/rails

RUN gem source -r https://rubygems.org/
RUN gem source -a https://ruby.taobao.org/

ENV RAILS_VERSION 4.2.5

RUN gem install rails --version "$RAILS_VERSION"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

VOLUME ["/usr/src/app/db/data"]

RUN bundle install
RUN rake db:migrate

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]