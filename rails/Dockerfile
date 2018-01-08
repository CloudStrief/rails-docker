FROM ruby

# 替换国内镜像
RUN gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/
RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.org

RUN gem install rails

COPY ./Gemfile /usr/src/Gemfile

WORKDIR /usr/src
RUN bundle

WORKDIR /usr/src/app

EXPOSE 3000

CMD ["rails", "server"]
