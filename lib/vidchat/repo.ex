defmodule Vidchat.Repo do
  use Ecto.Repo,
    otp_app: :vidchat,
    adapter: Ecto.Adapters.Postgres
end
