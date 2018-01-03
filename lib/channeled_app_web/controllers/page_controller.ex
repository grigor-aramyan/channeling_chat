defmodule ChanneledAppWeb.PageController do
  use ChanneledAppWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
