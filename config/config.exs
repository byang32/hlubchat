# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hlubchat,
  ecto_repos: [Hlubchat.Repo]

# Configures the endpoint
config :hlubchat, HlubchatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oF2n4JDCo3juiL0n2PwGV8E0oRxWHYBHWq2QYNEctW1wSo4X/MMrrMKeS6TqYev8",
  render_errors: [view: HlubchatWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hlubchat.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

#Config Github ueberauth
config :ueberauth, Ueberauth,
  providers: [
    github: {Ueberauth.Strategy.Github, []}
  ]

config :ueberauth, Ueberauth.Strategy.Github.OAuth,
  client_id: "8fa85e6749f68526f2af",
  client_secret: "03d909a39548c0dacff5887984091f9a8b59708a"