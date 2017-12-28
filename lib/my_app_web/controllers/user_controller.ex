defmodule MyAppWeb.UserController do
  use MyAppWeb, :controller

  alias MyApp.Accounts
  alias MyApp.Accounts.User

#  action_fallback MyAppWeb.FallbackController

  def index(conn, _params) do
    raise MyAppWeb.Router.NoRouteError, "No record found"
    render(conn, "index.json", users: %{test: "hallo"})
  end
end
