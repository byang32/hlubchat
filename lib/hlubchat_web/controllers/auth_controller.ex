defmodule HlubchatWeb.AuthController do
    use HlubchatWeb, :controller
    plug Ueberauth

    def callback(conn, params) do
        IO.puts "++++++++++++++"
        IO.inspet(conn.assigns)
        IO.puts "++++++++++++++"
        IO.inspect(params)
        IO.puts "++++++++++++++"
    end

end