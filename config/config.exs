# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the router
config :phoenix, Todo.Router,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  https: false,
  secret_key_base: "5QG3AJxrwVyEfp6dz0qOe5gGi3fqOmpGYmd01upH/dqIbAdl5N7R5rycs94DI33+1M/belGIbj9lPUjC3FOqHg==",
  catch_errors: true,
  debug_errors: false,
  error_controller: Todo.PageController

# Session configuration
config :phoenix, Todo.Router,
  session: [store: :cookie,
            key: "_todo_key"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
