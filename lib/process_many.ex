defmodule ProcessMany do
  @moduledoc """
  An experimental playground to demonstrate serial / parallel squaring of numbers with Elixir.
  To have the automated benchmark run your algorithm, make a function that starts with
  `process_` and preferrably put your GitHub name plus name of algorithm afterwards.
  Each function takes a collection and a processing function.
  """

  def process_dominik_parallel_0(collection, func) when is_function(func, 1) do
    collection
    |> Enum.map(&Task.async(fn -> func.(&1) end))
    |> Enum.map(&Task.await/1)
  end

  def process_dominik_serial_0(collection, func) when is_function(func, 1) do
    collection
    |> Enum.map(&func.(&1))
  end

  def process_dimitarvp_parallel_chunk(collection, func)
      when is_function(func, 1) do
    # Divide the number of elements to all available schedulers (usually # of CPU threads).
    # This gives us the size of a chunk of the collection per CPU thread.
    chunk_size = ceil(Enum.count(collection) / System.schedulers_online())

    # ...but never have chunks smaller than 500 elements; collections with elements below that
    # number are too small to be processed in parallel.
    chunk_size = max(500, chunk_size)

    collection
    |> Stream.chunk_every(chunk_size)
    |> Task.async_stream(
      fn batch ->
        Enum.map(batch, func)
      end,
      timeout: :infinity
    )
    |> Stream.run()
  end
end
