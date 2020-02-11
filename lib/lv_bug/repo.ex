defmodule LvBug.Repo do
  use Ecto.Repo,
    otp_app: :lv_bug,
    adapter: Ecto.Adapters.Postgres
end
