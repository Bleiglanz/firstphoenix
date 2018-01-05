# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenixfirst,
  ecto_repos: [Phoenixfirst.Repo]

# Configures the endpoint
config :phoenixfirst, PhoenixfirstWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dSfO880K6ZXWHRhOuRR4vgaiqZulEUH1rGJV6/Nu2wQ2smI5+nESQ+b4q4A7bcPj",
  render_errors: [view: PhoenixfirstWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phoenixfirst.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
