defmodule Ectofun.PageController do
  use Ectofun.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
