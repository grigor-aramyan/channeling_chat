defmodule ChanneledAppWeb.DashboardChannel do
  use ChanneledAppWeb, :channel

  def join("dashboard:activity", _params, socket) do
    IO.puts "joined"
    {:ok, socket}
  end
end