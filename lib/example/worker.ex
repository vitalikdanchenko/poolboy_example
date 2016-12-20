defmodule Example.Worker do
  use GenServer
  require Logger

  @timeout 10_000

  def start_link(state) do
    GenServer.start_link(__MODULE__, state, [])
  end

  def init(state) do
    {:ok, state}
  end

  def process(pid, jid) do
    GenServer.call(pid, {:process, jid}, @timeout)
  end

  def handle_call({:process, jid}, _from, state) do
    Logger.info "Job [#{jid}] started"
    @timeout |> :rand.uniform |> :timer.sleep
    Logger.info "Job [#{jid}] finished"
    {:reply, :ok, state}
  end
end
