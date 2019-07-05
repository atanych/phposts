defmodule Ip do
  use Ecto.Schema

  schema "ips" do
    field :value, EctoNetwork.INET
    many_to_many(:users, User, join_through: IpUser, on_replace: :delete)
  end
end
