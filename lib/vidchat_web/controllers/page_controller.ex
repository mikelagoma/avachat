defmodule VidchatWeb.PageController do
  use VidchatWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
