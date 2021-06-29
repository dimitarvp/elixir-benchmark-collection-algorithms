defmodule ProcessManyBench do
  use BencheeDsl.Benchmark

  @title "Collection Processing Benchmark"

  @description """
  ## What is this?

  This repo is a small Elixir performance arena for testing serial or parallel
  processing of big collections.

  To test your algorithm:

  - Open `lib/process_many.ex`
  - Add your function. It must start with `process_` and accept two
    parameters: (1) the collection and (2) a function that accepts one
    parameter and returns a new value. The name should ideally comprise of
    your GitHub username and a short description of the algorithm (e.g. mine
    is `process_dimitarvp_parallel_chunk`).
  - Run `mix bench`
  """

  config title: @title,
         time: 1

  formatter Benchee.Formatters.Markdown,
    file: Path.expand("../README.md", __DIR__),
    description: @description

  inputs %{
    "small" => [1..100, &processor/1],
    "medium" => [1..10_000, &processor/1],
    "big" => [1..100_000, &processor/1]
  }

  defp processor(x), do: x * x

  jobs do
    :functions
    |> ProcessMany.__info__()
    |> Enum.reduce(%{}, fn {fun_name, arity}, acc ->
      case {Atom.to_string(fun_name), arity} do
        {"process_" <> name, 2} ->
          fun = Function.capture(ProcessMany, fun_name, 2)
          Map.put(acc, name, fn x -> apply(fun, x) end)

        _ ->
          acc
      end
    end)
  end
end
