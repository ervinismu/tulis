defmodule TulisWeb.PageController do
  use TulisWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
