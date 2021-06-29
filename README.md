
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
    <td style="white-space: nowrap">Intel(R) Core(TM) i7-4770HQ CPU @ 2.20GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">8</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">16 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.12.1</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">23.3.4.4</td>
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
    <td style="white-space: nowrap; text-align: right">101.00</td>
    <td style="white-space: nowrap; text-align: right">9.90 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.02%</td>
    <td style="white-space: nowrap; text-align: right">10.05 ms</td>
    <td style="white-space: nowrap; text-align: right">12.61 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dimitarvp_parallel_chunk</td>
    <td style="white-space: nowrap; text-align: right">34.64</td>
    <td style="white-space: nowrap; text-align: right">28.87 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.85%</td>
    <td style="white-space: nowrap; text-align: right">28.95 ms</td>
    <td style="white-space: nowrap; text-align: right">30.04 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_parallel_0</td>
    <td style="white-space: nowrap; text-align: right">1.36</td>
    <td style="white-space: nowrap; text-align: right">735.78 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.15%</td>
    <td style="white-space: nowrap; text-align: right">735.78 ms</td>
    <td style="white-space: nowrap; text-align: right">778.16 ms</td>
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
    <td style="white-space: nowrap;text-align: right">101.00</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dimitarvp_parallel_chunk</td>
    <td style="white-space: nowrap; text-align: right">34.64</td>
    <td style="white-space: nowrap; text-align: right">2.92x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_parallel_0</td>
    <td style="white-space: nowrap; text-align: right">1.36</td>
    <td style="white-space: nowrap; text-align: right">74.31x</td>
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
    <td style="white-space: nowrap; text-align: right">1027.15</td>
    <td style="white-space: nowrap; text-align: right">0.97 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.95%</td>
    <td style="white-space: nowrap; text-align: right">0.96 ms</td>
    <td style="white-space: nowrap; text-align: right">1.22 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dimitarvp_parallel_chunk</td>
    <td style="white-space: nowrap; text-align: right">321.60</td>
    <td style="white-space: nowrap; text-align: right">3.11 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.66%</td>
    <td style="white-space: nowrap; text-align: right">3.10 ms</td>
    <td style="white-space: nowrap; text-align: right">3.84 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_parallel_0</td>
    <td style="white-space: nowrap; text-align: right">15.05</td>
    <td style="white-space: nowrap; text-align: right">66.43 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.06%</td>
    <td style="white-space: nowrap; text-align: right">66.74 ms</td>
    <td style="white-space: nowrap; text-align: right">72.42 ms</td>
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
    <td style="white-space: nowrap;text-align: right">1027.15</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dimitarvp_parallel_chunk</td>
    <td style="white-space: nowrap; text-align: right">321.60</td>
    <td style="white-space: nowrap; text-align: right">3.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_parallel_0</td>
    <td style="white-space: nowrap; text-align: right">15.05</td>
    <td style="white-space: nowrap; text-align: right">68.23x</td>
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
    <td style="white-space: nowrap; text-align: right">105.35 K</td>
    <td style="white-space: nowrap; text-align: right">9.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±25.04%</td>
    <td style="white-space: nowrap; text-align: right">8.90 μs</td>
    <td style="white-space: nowrap; text-align: right">16.90 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dimitarvp_parallel_chunk</td>
    <td style="white-space: nowrap; text-align: right">17.32 K</td>
    <td style="white-space: nowrap; text-align: right">57.73 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.79%</td>
    <td style="white-space: nowrap; text-align: right">53.90 μs</td>
    <td style="white-space: nowrap; text-align: right">106.90 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_parallel_0</td>
    <td style="white-space: nowrap; text-align: right">1.70 K</td>
    <td style="white-space: nowrap; text-align: right">587.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.59%</td>
    <td style="white-space: nowrap; text-align: right">578.40 μs</td>
    <td style="white-space: nowrap; text-align: right">792.18 μs</td>
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
    <td style="white-space: nowrap;text-align: right">105.35 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dimitarvp_parallel_chunk</td>
    <td style="white-space: nowrap; text-align: right">17.32 K</td>
    <td style="white-space: nowrap; text-align: right">6.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_parallel_0</td>
    <td style="white-space: nowrap; text-align: right">1.70 K</td>
    <td style="white-space: nowrap; text-align: right">61.86x</td>
  </tr>

</table>



<hr/>

