defmodule User do
  use Ecto.Schema

  schema "users" do
    field :login, :string
    many_to_many(:ips, Ip, join_through: IpUser, on_replace: :delete)
  end
end
