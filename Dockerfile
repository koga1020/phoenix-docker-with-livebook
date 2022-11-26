FROM hexpm/elixir:1.14.2-erlang-25.1.2-alpine-3.16.2

RUN apk add --no-cache --update \
  bash \
  inotify-tools \
  git \
  build-base \
  nodejs \
  npm

RUN mix local.hex --force && \
  mix local.rebar --force

WORKDIR /app
