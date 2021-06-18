## What is this?

This repo is a small Elixir performance arena for testing serial or parallel processing of big collections.

To test your algorithm:

- Open `lib/process_many.ex`
- Add your function. It must start with `process_` and accept two parameters: (1) the collection and (2) a function that accepts one parameter and returns a new value. The name should ideally comprise of your GitHub username and a short description of the algorithm (e.g. mine is `process_dimitarvp_parallel_chunk`).
- Run `mix run scripts/benchmark.exs`
