defmodule MyAppWeb.ErrorView do
  use MyAppWeb, :view

  def render("404.json", _assigns) do
    IO.puts "404"
    %{errors: %{detail: "Page not found"}}
  end

  def render("500.json", _assigns) do
    IO.puts "500"
    %{errors: %{detail: "Internal server error"}}
  end

  # In case no render clause matches or no
  # template is found, let's render it as 500
  def template_not_found(_template, assigns) do
    IO.puts "not found"
    render "500.json", assigns
  end
end
