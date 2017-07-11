defmodule Community.Repo.Migrations.CreateCommunity.News.Link do
  use Ecto.Migration

  def change do
    create table(:news_links) do
      add :url, :string
      add :description, :text

      timestamps()
    end

  end
end
