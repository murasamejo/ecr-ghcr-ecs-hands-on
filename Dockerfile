FROM ruby:3.3.3

WORKDIR /myapp

COPY . /myapp

RUN gem install bundler -v 2.3.5
RUN bundle install

COPY entrypoint.sh /usr/bin/
ENTRYPOINT ["/usr/bin/entrypoint.sh"]

CMD ["rails", "server", "-b", "0.0.0.0"]
