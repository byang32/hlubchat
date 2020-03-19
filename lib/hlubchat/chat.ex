defmodule Hlubchat.Chat do
    use Ecto.Schema
    import Ecto.Changeset

    schema "chats" do
        field :sent_by, :string
        field :message, :string

        timestamps()
    end

    def changeset(struct, params \\ %{}) do
        struct
        |> cast(params, [:sent_by, :message])
        |> validate_required([:sent_by, :message])
    end
end