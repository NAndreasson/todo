defmodule Todo.TodoController do
  use Phoenix.Controller
  alias Poison, as: JSON

  plug :action

  def show(conn, _params) do
    meck = JSON.encode!(%{name: "David", surname: "Davidson"})
    json conn, 200, meck
  end

end
