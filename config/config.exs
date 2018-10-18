# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :office_elo, OfficeEloWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZVRN8ZlT0k0QWquvuxpWVEbs581PA1I89xuPbBpgwUS9WjAjYKsFAtFRZWO2jyHT",
  render_errors: [view: OfficeEloWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: OfficeElo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
