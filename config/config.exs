# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :lv_bug,
  ecto_repos: [LvBug.Repo]

# Configures the endpoint
config :lv_bug, LvBugWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hV27IAEcIYQ/MqM27XoDPEXQYs6RXPL5NWy0cOddQbSeG2ua25rwEb6aK5S3LFBE",
  render_errors: [view: LvBugWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LvBug.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "SECRET_SALT"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
