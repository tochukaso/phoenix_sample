# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_sample,
  ecto_repos: [PhoenixSample.Repo]

# Configures the endpoint
config :phoenix_sample, PhoenixSampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OTpuGVPwPwf/HPlXJ1igqYQ3q8yy4L5azU3hpXAlQ5ZjlJIKRG4f+3ci7fEchQW7",
  render_errors: [view: PhoenixSampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixSample.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "s0u1Vtwu"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

# Configures the Swagger

config :phoenix_sample, :phoenix_swagger,
  swagger_files: %{
    "priv/static/swagger.yaml" => [
      router: PhoenixSampleWeb.Router,
      endpoint: PhoenixSampleWeb.Endpoint
    ]
  }

config :phoenix_swagger, json_library: Jason
