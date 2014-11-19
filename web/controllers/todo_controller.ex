defmodule Todo.TodoController do
  use Phoenix.Controller
  alias Poison, as: JSON
  alias Todo.Repo
  import Ecto.Query

  plug :action

  def show(conn, _params) do
    todos = Repo.all(Item
      |> where([item], item.completed == false))

    todosJson = JSON.encode!(todos)
    json conn, 200, todosJson
  end

  def create(conn, _params) do
    item = Map.merge(%Item{completed: false}, atomize_keys(_params))
    case Item.validate(item) do
      [] ->
        Repo.insert(item)
        json conn, 200, JSON.encode!(item)
      _ ->
        json conn, 200, JSON.encode!("Fel")
    end
  end

  def update(conn, %{"id" => id, "completed" => completed}) do
    item = Repo.get(Item, String.to_integer(id))
    item = %{item | completed: completed}

    case Item.validate(item) do
      [] ->
        Repo.update(item)
        json conn, 200, JSON.encode!(item)
      errors ->
        json conn, errors: errors
    end

    # json conn, 200, JSON.encode!(item)
  end

  def destroy(conn, %{"id" => id}) do
    item = Repo.get(Item, String.to_integer(id))
    Repo.delete(item)

    json conn, 200, JSON.encode!(item)
  end

  defp atomize_keys(struct) do
    Enum.reduce struct, %{}, fn({k, v}, map) -> Map.put(map, String.to_atom(k), v) end
  end

end
