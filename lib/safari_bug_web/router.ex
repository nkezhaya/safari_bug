defmodule SafariBugWeb.Router do
  use SafariBugWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SafariBugWeb do
    pipe_through :api

    get "/iodata", DataController, :iodata
    get "/binary", DataController, :binary
  end
end
