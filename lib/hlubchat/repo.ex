defmodule Hlubchat.Repo do
  use Ecto.Repo,
    otp_app: :hlubchat,
    adapter: Ecto.Adapters.Postgres
end
