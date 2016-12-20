defmodule Example.Usage do

  def run do
    1..100
    |> Enum.map(fn jid -> Task.async(fn -> run(jid) end) end)
    |> Enum.each(fn task -> Task.await(task, :infinity) end)
  end

  defp run(jid) do
    :poolboy.transaction(Example.Pool.name, fn pid ->
      Example.Worker.process(pid, jid)
    end, :infinity)
  end

end
