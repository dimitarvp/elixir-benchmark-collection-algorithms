
# Collection Processing Benchmark

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


## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>macOS</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Intel(R) Xeon(R) W-2150B CPU @ 3.00GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">20</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">64 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.18.3</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">27.3.1</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">1 s</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">2 s</td>
  </tr>
</table>

## Statistics




__Input: big__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_serial_0</td>
    <td style="white-space: nowrap; text-align: right">282.59</td>
    <td style="white-space: nowrap; text-align: right">3.54 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.82%</td>
    <td style="white-space: nowrap; text-align: right">3.51 ms</td>
    <td style="white-space: nowrap; text-align: right">3.88 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dimitarvp_parallel_chunk</td>
    <td style="white-space: nowrap; text-align: right">61.64</td>
    <td style="white-space: nowrap; text-align: right">16.22 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.19%</td>
    <td style="white-space: nowrap; text-align: right">16.37 ms</td>
    <td style="white-space: nowrap; text-align: right">18.98 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_parallel_0</td>
    <td style="white-space: nowrap; text-align: right">1.01</td>
    <td style="white-space: nowrap; text-align: right">993.28 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">993.28 ms</td>
    <td style="white-space: nowrap; text-align: right">993.28 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">dominik_serial_0</td>
    <td style="white-space: nowrap;text-align: right">282.59</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dimitarvp_parallel_chunk</td>
    <td style="white-space: nowrap; text-align: right">61.64</td>
    <td style="white-space: nowrap; text-align: right">4.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_parallel_0</td>
    <td style="white-space: nowrap; text-align: right">1.01</td>
    <td style="white-space: nowrap; text-align: right">280.69x</td>
  </tr>

</table>



<hr/>


__Input: medium__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_serial_0</td>
    <td style="white-space: nowrap; text-align: right">3031.71</td>
    <td style="white-space: nowrap; text-align: right">0.33 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.36%</td>
    <td style="white-space: nowrap; text-align: right">0.32 ms</td>
    <td style="white-space: nowrap; text-align: right">0.40 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dimitarvp_parallel_chunk</td>
    <td style="white-space: nowrap; text-align: right">580.33</td>
    <td style="white-space: nowrap; text-align: right">1.72 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.65%</td>
    <td style="white-space: nowrap; text-align: right">1.73 ms</td>
    <td style="white-space: nowrap; text-align: right">2.23 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_parallel_0</td>
    <td style="white-space: nowrap; text-align: right">17.89</td>
    <td style="white-space: nowrap; text-align: right">55.90 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.98%</td>
    <td style="white-space: nowrap; text-align: right">55.29 ms</td>
    <td style="white-space: nowrap; text-align: right">59.49 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">dominik_serial_0</td>
    <td style="white-space: nowrap;text-align: right">3031.71</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dimitarvp_parallel_chunk</td>
    <td style="white-space: nowrap; text-align: right">580.33</td>
    <td style="white-space: nowrap; text-align: right">5.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_parallel_0</td>
    <td style="white-space: nowrap; text-align: right">17.89</td>
    <td style="white-space: nowrap; text-align: right">169.49x</td>
  </tr>

</table>



<hr/>


__Input: small__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_serial_0</td>
    <td style="white-space: nowrap; text-align: right">301.43 K</td>
    <td style="white-space: nowrap; text-align: right">3.32 μs</td>
    <td style="white-space: nowrap; text-align: right">±83.40%</td>
    <td style="white-space: nowrap; text-align: right">3.17 μs</td>
    <td style="white-space: nowrap; text-align: right">5.35 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dimitarvp_parallel_chunk</td>
    <td style="white-space: nowrap; text-align: right">34.24 K</td>
    <td style="white-space: nowrap; text-align: right">29.20 μs</td>
    <td style="white-space: nowrap; text-align: right">±17.80%</td>
    <td style="white-space: nowrap; text-align: right">27.81 μs</td>
    <td style="white-space: nowrap; text-align: right">47.35 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_parallel_0</td>
    <td style="white-space: nowrap; text-align: right">2.37 K</td>
    <td style="white-space: nowrap; text-align: right">422.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.34%</td>
    <td style="white-space: nowrap; text-align: right">420.58 μs</td>
    <td style="white-space: nowrap; text-align: right">520.30 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">dominik_serial_0</td>
    <td style="white-space: nowrap;text-align: right">301.43 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dimitarvp_parallel_chunk</td>
    <td style="white-space: nowrap; text-align: right">34.24 K</td>
    <td style="white-space: nowrap; text-align: right">8.8x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_parallel_0</td>
    <td style="white-space: nowrap; text-align: right">2.37 K</td>
    <td style="white-space: nowrap; text-align: right">127.44x</td>
  </tr>

</table>



<hr/>

