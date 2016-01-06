defmodule Ectofun.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :content, :string
      add :published, :boolean, default: false

      timestamps
    end

  end
end
