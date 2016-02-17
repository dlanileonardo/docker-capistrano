FROM ruby:2.3.0

ENV HOME /root

RUN mkdir -p /azk/deploy
WORKDIR /azk/deploy

# install deps
RUN apt-get update -qq && \
    apt-get install -y -qq ruby-dev make ssh && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# install capistrano
RUN gem install --no-rdoc --no-ri capistrano -v 3.4.0

ENTRYPOINT ["/azk/deploy/deploy.sh"]
CMD ["/azk/deploy/deploy.sh"]
