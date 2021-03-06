defmodule MyAnimeListWeb.Router do
  use MyAnimeListWeb, :router
  use Coherence.Router 

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    # plug Coherence.Authentication.Session
  end

  # pipeline :api do
  #   plug :accepts, ["json"]
  # end

  # scope "/", MyAnimeListWeb do
  #   pipe_through :browser # Use the default browser stack
  #   get "/", PageController, :index
  #   get "/home", HomeController, :index
  # end

  # Other scopes may use custom stacks.
  # scope "/api", MyAnimeListWeb do
  #   pipe_through :api
  # end
end
