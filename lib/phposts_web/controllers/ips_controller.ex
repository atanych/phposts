defmodule PhpostsWeb.IpsController do
  use PhpostsWeb, :controller
  import Ecto.Query
  require IEx

  def multiple_users(conn, _params) do
    ips = Ip |> Ecto.Query.limit(20) |> Phposts.Repo.all() |> Phposts.Repo.preload(:users)

    json(
      conn,
      Enum.map(ips, fn ip ->
        %{ip: EctoNetwork.INET.decode(ip.value), users: Enum.map(ip.users, & &1.login)}
      end)
    )
  end
end
