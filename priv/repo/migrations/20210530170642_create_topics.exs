defmodule Discuss.Repo.Migrations.CreateTopics do
  use Ecto.Migration

  def change do
    create table(:topics) do
      add :title, :string
      add :user_id, references(:users, on_delete: :delete_all), null: false
      timestamps()
    end

  end
end
