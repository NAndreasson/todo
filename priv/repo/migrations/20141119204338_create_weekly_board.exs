defmodule Todo.Repo.Migrations.CreateWeeklyBoard do
  use Ecto.Migration

  def up do
    ["CREATE TABLE weekly_boards( \
          id serial primary key, \
          title text, \
          updated_at timestamp)",
    "INSERT INTO weekly_boards (title) VALUES ('Monday')"
    ]
  end

  def down do
    "DROP TABLE weekly_boards"
  end

end
