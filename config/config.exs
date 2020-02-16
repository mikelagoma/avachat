# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :vidchat,
  ecto_repos: [Vidchat.Repo]

# Configures the endpoint
config :vidchat, VidchatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7+meD7JUiBO06u56jzn/vH7Z5KKEwHfUptdbuwqZcsmgM46SwaYp0ccCimO1OQst",
  render_errors: [view: VidchatWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Vidchat.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "SsrUOG1+"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
