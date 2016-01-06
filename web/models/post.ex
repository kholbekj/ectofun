defmodule Ectofun.Post do
  use Ectofun.Web, :model
  use CommonQueries

  schema "posts" do
    field :title, :string
    field :content, :string
    field :published, :boolean, default: false

    timestamps
  end

  @required_fields ~w(title content published)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def unpublished do
    from p in Ectofun.Post,
    where: p.published == false
  end

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
