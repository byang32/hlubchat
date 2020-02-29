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

config :ueberauth, Ueberauth,
  providers: [
    facebook: {Ueberauth.Strategy.Facebook, []}
  ]

config :ueberauth, Ueberauth.Strategy.Github.OAuth,
  client_id: "GITHUB_CLIENT_ID",
  client_secret: "GITHUB_CLIENT_SECRET_KEY"

config :ueberauth, Ueberauth,
  providers: [
    github: {Ueberauth.Strategy.Github, [default_scope: "user,public_repo,notifications"]}
  ]

config :ueberauth, Ueberauth.Strategy.Facebook.OAuth,
  client_id: "FACEBOOK_CLIENT_ID",
  client_secret: "FACEBOOK_CLIENT_SECRET_KEY"