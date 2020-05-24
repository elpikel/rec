defmodule Rec.Advertisments.Advertisment do
  use Ecto.Schema
  import Ecto.Changeset

  schema "advertisments" do
    field :url, :string
    field :site, :string
    field :content, :string
  end

  def changeset(advertisment, params \\ %{}) do
    advertisment
    |> cast(params, [:url, :site, :content])
    |> validate_required([:url, :site, :content])
  end
end
