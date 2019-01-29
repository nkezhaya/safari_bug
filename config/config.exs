use Mix.Config

config :safari_bug, SafariBugWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LQ6hquWbuKxXgTqx3LUZhR5zPySo1EyjVquuPcPxnjhl1wvvk7LLxiHYAAMu4PYA",
  render_errors: [view: SafariBugWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: SafariBug.PubSub, adapter: Phoenix.PubSub.PG2]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

config :safari_bug, SafariBugWeb.Endpoint,
  https: [
    port: 4000,
    cipher_suite: :strong,
    certfile: "priv/cert/selfsigned.pem",
    keyfile: "priv/cert/selfsigned_key.pem"
  ],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: []

config :logger, :console, format: "[$level] $message\n"
config :phoenix, :stacktrace_depth, 20
config :phoenix, :plug_init_mode, :runtime
