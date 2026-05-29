defmodule GalaxyWeb.PageController do
  use GalaxyWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
