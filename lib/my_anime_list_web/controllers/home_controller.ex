defmodule MyAnimeListWeb.HomeController do
    use MyAnimeListWeb, :controller
  
    def index(conn, _params) do
      render conn, "index.html"
    end
  end