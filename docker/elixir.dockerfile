FROM elixir:1.7

WORKDIR /usr/src

ADD mix.exs mix.lock ./

RUN mix local.hex --force \
    && mix local.rebar --force \
    && mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez \
    && mix deps.get --force

CMD ["mix", "phx.server"]
