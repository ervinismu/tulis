# Tulis

Tulis app with elixir and phoenix framework.

## Deps

- Elixir - `~> 1.12`
- Phoenix - `~> 1.6.15`
- Postgres

## Run Locally

- `cd tulis`
- Install dependencies `mix deps.get`
- Create migration database `mix ecto.setup`
- Start phoenix endpoint `mix phx.server`
- Visit [`localhost:4000`](http://localhost:4000) from your browser.

## Set Env Variables

```bash
export TULIS_DB_USERNAME="youruser"
export TULIS_DB_PASSWORD="yourpasswd"
export TULIS_DB_HOSTNAME="yourhost"
export TULIS_DB_NAME="yourdb"
export TULIS_DB_PORT="yourport"
```

## Deployment

For free deployment, you can use fly.io and follow along [this article](https://fly.io/docs/elixir/) for setup and deployment.

## Basic Commands

> Note :  
> Several command are availables in Makefile, you can check all available commands using `make help`

### Database

- create database : `mix ecto.create`
- migration database : `mix ecto.migrate`
- create & migrate database : `mix ecto.setup`

### Test

You can use command `mix test` for running testing locally. And sample output will be like this :
![Test Output](https://fbangwfofjlewpyokcfn.supabase.co/storage/v1/object/public/assets/test-output?t=2022-12-16T13%3A03%3A35.734Z "Test Output")

## About Project

### Directory Structures

```
❯ tree -L 1 -d
.
├── _build/
├── assets/
├── config/
├── deps/
├── lib/
├── priv/
└── test/

7 directories
```

- `_build` - a directory created by the mix command line tool that ships as part of Elixir that holds all compilation artifacts. As we have seen in "Up and Running", mix is the main interface to your application. We use Mix to compile our code, create databases, run our server, and more. This directory must not be checked into version control and it can be removed at any time. Removing it will force Mix to rebuild your application from scratch.

- `assets` - a directory that keeps everything related to source front-end assets, such as JavaScript and CSS, and automatically managed by the esbuild tool.

- `config` - a directory that holds your project configuration. The config/config.exs file is the entry point for your configuration. At the end of the config/config.exs, it imports environment specific configuration, which can be found in config/dev.exs, config/test.exs, and config/prod.exs. Finally, config/runtime.exs is executed and it is the best place to read secrets and other dynamic configuration.

- `deps` - a directory with all of our Mix dependencies. You can find all dependencies listed in the mix.exs file, inside the defp deps do function definition. This directory must not be checked into version control and it can be removed at any time. Removing it will force Mix to download all deps from scratch.

- `lib` - a directory that holds your application source code. This directory is broken into two subdirectories, lib/hello and lib/hello_web. The lib/hello directory will be responsible to host all of your business logic and business domain. It typically interacts directly with the database - it is the "Model" in Model-View-Controller (MVC) architecture. lib/hello_web is responsible for exposing your business domain to the world, in this case, through a web application. It holds both the View and Controller from MVC. We will discuss the contents of these directories with more detail in the next sections.

- `priv` - a directory that keeps all resources that are necessary in production but are not directly part of your source code. You typically keep database scripts, translation files, and more in here. Static and generated assets, sourced from the assets directory, are also served from here by default.

- `test` - a directory with all of our application tests. It often mirrors the same structure found in lib.
