defmodule Todo.Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  def conf do
    parse_url "ecto://nandreasson:@localhost/to_dos"
  end

  def priv do
    app_dir(:todo, "priv/repo")
  end
end