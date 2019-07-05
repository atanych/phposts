defmodule PhpostsWeb.Router do
  use PhpostsWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhpostsWeb do
    pipe_through :api
    get "/ips/multiple_users", IpsController, :multiple_users

  end
end
