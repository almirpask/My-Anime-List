# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :my_anime_list,
  ecto_repos: [MyAnimeList.Repo]

# Configures the endpoint
config :my_anime_list, MyAnimeListWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fNg6CTVdhZ1ELT37B2zSysgDDBXuDfyQjCTZ+x0bW3883lMOv1NWdk0ZKtqhqvzm",
  render_errors: [view: MyAnimeListWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MyAnimeList.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: MyAnimeList.User,
  repo: MyAnimeList.Repo,
  module: MyAnimeList,
  web_module: MyAnimeList.Web,
  router: MyAnimeList.Router,
  messages_backend: MyAnimeList.Coherence.Messages,
  logged_out_url: "/",
  user_active_field: true,
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:confirmable, :rememberable, :registerable, :invitable, :authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token]

config :coherence, MyAnimeList.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%
