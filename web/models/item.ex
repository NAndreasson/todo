defmodule Item do
  use Ecto.Model

  validate item, title: present()

  schema "items" do
    field :title, :string
    field :completed, :boolean
    field :updated_at, :datetime
  end
end