defmodule MyAppWeb.Router do
  use MyAppWeb, :router

  defmodule NoRouteError do
    @moduledoc """
    Exception raised when no route is found.
    """
    defexception plug_status: 404, message: "no route found", conn: nil, router: nil
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MyAppWeb do
    pipe_through :api

    resources "/users", UserController, only: [:index]
  end
end
