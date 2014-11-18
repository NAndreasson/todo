defmodule Todo.TodoController do
  use Phoenix.Controller
  alias Poison, as: JSON

  plug :action

  def show(conn, _params) do
    todos = [
      %{title: "Meck", completed: false}
    ]
    todosJson = JSON.encode!(todos)

    json conn, 200, todosJson
  end

end
