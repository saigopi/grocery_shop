defmodule Groceryshop.Product do
  use Groceryshop.Web, :model

  schema "products" do
    field :name, :string
    field :price, :float

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :price])
    |> validate_required([:name, :price])
    |> validate_number(:price, greater_than: 0)
  end

end
