# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :phoenix_ejabberd, PhoenixEjabberd.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ai39uvRYNwNu0ZHkDaPKRtn9qHBmYOOYcY6uJQ9BwvBChNnvDdwq7Rx4bZiy2mLJ",
  render_errors: [view: PhoenixEjabberd.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixEjabberd.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :ejabberd,
  file: "config/ejabberd.yml",
  log_path: "logs/ejabberd.log"

config :mnesia,
  dir: "mnesiadb/"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
