defmodule Phposts.Repo do
  use Ecto.Repo,
    otp_app: :phposts,
    adapter: Ecto.Adapters.Postgres
end
