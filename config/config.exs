# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :calculator, CalculatorWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GfS7WPxJRTKbxEINSeo0/Llad5jJ7V7lrcBQvpRbV7u1nG/IDtQFkgiaQu70oeS1",
  render_errors: [view: CalculatorWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Calculator.PubSub,
  live_view: [signing_salt: "EzQLpfNS"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
