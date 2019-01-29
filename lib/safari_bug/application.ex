defmodule SafariBug.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [SafariBugWeb.Endpoint]
    opts = [strategy: :one_for_one, name: SafariBug.Supervisor]

    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    SafariBugWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
