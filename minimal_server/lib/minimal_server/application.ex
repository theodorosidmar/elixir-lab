defmodule MinimalServer.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args),
    do: Supervisor.start_link(children(), opts())

  defp children do
    [
      MinimalServer.Endpoint
    ]
  end

  defp opts do
    [
      strategy: :one_for_one,
      name: MinimalServer.Supervisor
    ]
  end
end
