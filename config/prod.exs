use Mix.Config

# ## SSL Support
#
# To get SSL working, you will need to set:
#
#     https: [port: 443,
#             keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#             certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.

config :phoenix, Todo.Router,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "5QG3AJxrwVyEfp6dz0qOe5gGi3fqOmpGYmd01upH/dqIbAdl5N7R5rycs94DI33+1M/belGIbj9lPUjC3FOqHg=="

config :logger, :console,
  level: :info
