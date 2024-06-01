FROM ruby:3.1

RUN apt-get update -qq && apt-get install -y nodejs yarn
RUN git clone https://github.com/blossom01234/myapp.git
WORKDIR /myapp
RUN bundle install

EXPOSE 3000
#ENTRYPOINT ["/bin/sh", "-c", "while :; do sleep 10; done"]
CMD ["bundle", "exec", "rails", "s", "-p", "3000", "-b", "0.0.0.0"]