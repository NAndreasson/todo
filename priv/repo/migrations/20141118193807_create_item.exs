defmodule Todo.Repo.Migrations.CreateItem do
  use Ecto.Migration

  def up do
    "CREATE TABLE items( \
          id serial primary key, \
          title text, \
          completed boolean, \
          updated_at timestamp)"
  end

  def down do
    "DROP TABLE items"
  end

end
