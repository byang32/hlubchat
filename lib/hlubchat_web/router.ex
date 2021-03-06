defmodule HlubchatWeb.Router do
  use HlubchatWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug HlubchatWeb.Plugs.SetUser
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", HlubchatWeb do
    pipe_through :browser

    get "/", LobbyController, :index
    get "/chat/new", ChatController, :new
  end

  scope "/auth", HlubchatWeb do
    pipe_through :browser

    get "/signout", AuthController, :signout
    get "/:provider", AuthController, :request
    get "/:provider/callback", AuthController, :callback
  end

  # Other scopes may use custom stacks.
  # scope "/api", HlubchatWeb do
  #   pipe_through :api
  # end
end
