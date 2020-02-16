defmodule VidchatWeb.Router do
  use VidchatWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", VidchatWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/agora", VidchatController, :agora
    get "/chat", VidchatController, :chat
    get "/vidchat", VidchatController, :index
    get "/vidchat/:messenger", VidchatController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", VidchatWeb do
  #   pipe_through :api
  # end
end
