required_arity = 2
module = ProcessMany

Code.ensure_loaded!(module)

collection = 1..1_000_000
processor = fn x -> x * x end

module.__info__(:functions)
|> Enum.filter(fn {_name, arity} -> arity == required_arity end)
|> Enum.filter(fn {name, _arity} ->
  name |> Atom.to_string() |> String.starts_with?("process_")
end)
|> Enum.reduce([], fn {name, _arity}, acc ->
  function = Function.capture(module, name, required_arity)

  [
    {
      name |> Atom.to_string() |> String.trim_leading("process_"),
      fn -> apply(function, [collection, processor]) end
    }
    | acc
  ]
end)
|> Benchee.run(time: 30)
