defmodule Rec.Repo.Migrations.AddAdvertismentsTable do
  use Ecto.Migration

  def change do
    create table("advertisments") do
      add :url, :string
      add :site, :string
      add :content, :string

      timestamps()
    end
  end
end
