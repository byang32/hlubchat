defmodule HlubchatWeb.PageController do
  use HlubchatWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
