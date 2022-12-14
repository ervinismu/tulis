defmodule Tulis.Repo do
  use Ecto.Repo,
    otp_app: :tulis,
    adapter: Ecto.Adapters.Postgres
end
