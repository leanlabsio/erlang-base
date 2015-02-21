FROM debian:latest

RUN apt-key adv --keyserver pool.sks-keyservers.net --recv-keys 434975BD900CCBE4F7EE1B1ED208507CA14F4FCA \
    && echo 'deb http://packages.erlang-solutions.com/debian wheezy contrib' > /etc/apt/sources.list.d/erlang.list \
    && apt-get update \
    && apt-get install -y erlang-base --no-install-recommends \
    && apt-get install -y erlang-crypto --no-install-recommends \ 
    && rm -rf /var/lib/apt/lists/

CMD ["erl"]
