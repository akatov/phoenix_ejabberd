defmodule PhoenixEjabberd.PageController do
  use PhoenixEjabberd.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
