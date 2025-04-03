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
    collection
    |> Task.async_stream(func, timeout: :infinity)
    |> Stream.run()
  end
end
