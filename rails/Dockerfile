FROM ruby

# 替换国内镜像
RUN gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.com

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY ./Gemfile /usr/src/app/
RUN gem install rails
RUN bundle install

# 安装NodeJs
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
