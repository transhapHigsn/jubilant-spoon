defmodule GenstageExample.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  # def start(_type, _args) do
  #   # List all child processes to be supervised
  #   children = [
  #     # Starts a worker by calling: GenstageExample.Worker.start_link(arg)
  #     # {GenstageExample.Worker, arg}
  #   ]

  #   # See https://hexdocs.pm/elixir/Supervisor.html
  #   # for other strategies and supported options
  #   opts = [strategy: :one_for_one, name: GenstageExample.Supervisor]
  #   Supervisor.start_link(children, opts)
  # end

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(GenstageExample.Producer, [0]),
      worker(GenstageExample.ProducerConsumer, []),
      worker(GenstageExample.Consumer, [])
    ]

    opts = [strategy: :one_for_one, name: GenstageExample.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
