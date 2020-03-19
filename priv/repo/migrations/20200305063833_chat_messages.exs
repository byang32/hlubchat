defmodule Hlubchat.Repo.Migrations.ChatMessages do
  use Ecto.Schema
  import Ecto.Changeset

  def change do
    create table(:messages) do
      add :sent_by, :string
      add :message, :string

      timestamps()
    end
  end
end
