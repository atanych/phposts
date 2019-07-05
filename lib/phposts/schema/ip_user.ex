defmodule IpUser do
  use Ecto.Schema

  schema "ips_users" do
    belongs_to :user, User
    belongs_to :ip, Ip
    timestamps()
  end
end
