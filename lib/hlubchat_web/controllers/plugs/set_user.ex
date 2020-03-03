defmodule HlubchatWeb.Plugs.SetUser do
    import Plug.Conn
    import Phoenix.Controller

    alias Hlubchat.Repo
    alias Hlubchat.User
    alias Hlubchat.Router.Helpers

    def init(_params) do
        
    end

    def call(conn, _params) do
        user_id = get_session(conn, :user_id)
        
        cond do
            user = user_id && Hlubchat.Repo.get(User, user_id) ->
                assign(conn, :current_user, user) 
            true ->
               assign(conn, :current_user, nil)
        end
    end
end

