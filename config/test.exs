import Config

# Only in tests, remove the complexity from the password hashing algorithm
config :bcrypt_elixir, :log_rounds, 1

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :tulis, Tulis.Repo,
  username: System.get_env("TULIS_DB_USERNAME"),
  password: System.get_env("TULIS_DB_PASSWORD"),
  hostname: System.get_env("TULIS_DB_HOSTNAME"),
  port: System.get_env("TULIS_DB_PORT"),
  database: "tulis_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :tulis, TulisWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "3zsCBrJm1YjodwWkQANpDuDbJKcQK2hgTTpNz2X6Szd0eS0E8NJEp0PBZrZjf0gO",
  server: false

# In test we don't send emails.
config :tulis, Tulis.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
