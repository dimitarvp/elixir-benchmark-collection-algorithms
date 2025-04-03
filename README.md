
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
    <td style="white-space: nowrap; text-align: right">289.81</td>
    <td style="white-space: nowrap; text-align: right">3.45 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.78%</td>
    <td style="white-space: nowrap; text-align: right">3.43 ms</td>
    <td style="white-space: nowrap; text-align: right">4.00 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dimitarvp_parallel_chunk</td>
    <td style="white-space: nowrap; text-align: right">1.61</td>
    <td style="white-space: nowrap; text-align: right">619.25 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.38%</td>
    <td style="white-space: nowrap; text-align: right">619.25 ms</td>
    <td style="white-space: nowrap; text-align: right">620.90 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_parallel_0</td>
    <td style="white-space: nowrap; text-align: right">1.07</td>
    <td style="white-space: nowrap; text-align: right">937.29 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.40%</td>
    <td style="white-space: nowrap; text-align: right">937.29 ms</td>
    <td style="white-space: nowrap; text-align: right">953.22 ms</td>
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
    <td style="white-space: nowrap;text-align: right">289.81</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dimitarvp_parallel_chunk</td>
    <td style="white-space: nowrap; text-align: right">1.61</td>
    <td style="white-space: nowrap; text-align: right">179.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_parallel_0</td>
    <td style="white-space: nowrap; text-align: right">1.07</td>
    <td style="white-space: nowrap; text-align: right">271.64x</td>
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
    <td style="white-space: nowrap; text-align: right">3131.69</td>
    <td style="white-space: nowrap; text-align: right">0.32 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.82%</td>
    <td style="white-space: nowrap; text-align: right">0.31 ms</td>
    <td style="white-space: nowrap; text-align: right">0.38 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_parallel_0</td>
    <td style="white-space: nowrap; text-align: right">19.11</td>
    <td style="white-space: nowrap; text-align: right">52.34 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.21%</td>
    <td style="white-space: nowrap; text-align: right">51.98 ms</td>
    <td style="white-space: nowrap; text-align: right">56.40 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dimitarvp_parallel_chunk</td>
    <td style="white-space: nowrap; text-align: right">16.18</td>
    <td style="white-space: nowrap; text-align: right">61.82 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.39%</td>
    <td style="white-space: nowrap; text-align: right">61.90 ms</td>
    <td style="white-space: nowrap; text-align: right">63.88 ms</td>
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
    <td style="white-space: nowrap;text-align: right">3131.69</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_parallel_0</td>
    <td style="white-space: nowrap; text-align: right">19.11</td>
    <td style="white-space: nowrap; text-align: right">163.92x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dimitarvp_parallel_chunk</td>
    <td style="white-space: nowrap; text-align: right">16.18</td>
    <td style="white-space: nowrap; text-align: right">193.61x</td>
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
    <td style="white-space: nowrap; text-align: right">306.04 K</td>
    <td style="white-space: nowrap; text-align: right">3.27 μs</td>
    <td style="white-space: nowrap; text-align: right">±83.62%</td>
    <td style="white-space: nowrap; text-align: right">3.11 μs</td>
    <td style="white-space: nowrap; text-align: right">6.45 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_parallel_0</td>
    <td style="white-space: nowrap; text-align: right">2.35 K</td>
    <td style="white-space: nowrap; text-align: right">425.34 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.95%</td>
    <td style="white-space: nowrap; text-align: right">424.26 μs</td>
    <td style="white-space: nowrap; text-align: right">509.94 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dimitarvp_parallel_chunk</td>
    <td style="white-space: nowrap; text-align: right">1.62 K</td>
    <td style="white-space: nowrap; text-align: right">615.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.77%</td>
    <td style="white-space: nowrap; text-align: right">609.40 μs</td>
    <td style="white-space: nowrap; text-align: right">776.43 μs</td>
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
    <td style="white-space: nowrap;text-align: right">306.04 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dominik_parallel_0</td>
    <td style="white-space: nowrap; text-align: right">2.35 K</td>
    <td style="white-space: nowrap; text-align: right">130.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">dimitarvp_parallel_chunk</td>
    <td style="white-space: nowrap; text-align: right">1.62 K</td>
    <td style="white-space: nowrap; text-align: right">188.42x</td>
  </tr>

</table>



<hr/>

