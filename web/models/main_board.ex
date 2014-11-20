defmodule MainBoard do
  use Ecto.Model

  schema "weekly_boards" do
    field :title, :string
    field :updated_at, :datetime
    has_many :items, Item
  end
end