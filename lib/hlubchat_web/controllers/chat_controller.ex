defmodule HlubchatWeb.ChatController do
    use HlubchatWeb, :controller

    alias Hlubchat.Chat
    
    def new(conn, params) do
        changeset = Chat.changeset(%Chat{}, %{})
    end
end