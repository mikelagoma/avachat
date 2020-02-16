defmodule VidchatWeb.VidchatController do
  use VidchatWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def agora(conn, _params) do
  	# IO.puts(System.get_env("APP"))
    render(conn, "agora.html",
    	appID: System.get_env("APP"),
    	token: System.get_env("TOKEN")
	)
  end

  def chat(conn, _params) do
    render(conn, "chat.html")
  end

  def show(conn, %{"messenger" => messenger} = params) do
	  render(conn, "show.html", messenger: messenger)
  end
end
