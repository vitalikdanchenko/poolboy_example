defmodule Example.Pool do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, [])
  end

  def init([]) do
    children = [
      :poolboy.child_spec(name, config, [])
    ]
    opts = [strategy: :one_for_one, name: Example.Pool.Supervisor]
    supervise(children, opts)
  end

  def name do
    :example_pool
  end

  def config do
    [
      name: {:local, name},
      worker_module: Example.Worker,
      size: 5,
      max_overflow: 0
    ]
  end

end
