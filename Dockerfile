FROM daocloud.io/rails:onbuild

RUN gem source -r https://rubygems.org/
RUN gem source -a https://ruby.taobao.org/
