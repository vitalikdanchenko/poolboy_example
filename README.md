# Poolboy Example

An example of how to create a pool of workers in Elixir using Poolboy


```
git clone https://github.com/vitalikdanchenko/poolboy_example.git
cd poolboy_example
mix deps.get
iex -S mix
iex(1)> Example.Usage.run
```

## Output

```
22:04:08.004 [info]  Job [2] started
22:04:08.004 [info]  Job [4] started
22:04:08.004 [info]  Job [1] started
22:04:08.004 [info]  Job [3] started
22:04:08.004 [info]  Job [5] started
22:04:09.842 [info]  Job [2] finished
22:04:09.843 [info]  Job [6] started
22:04:13.819 [info]  Job [3] finished
22:04:13.820 [info]  Job [8] started
22:04:15.282 [info]  Job [6] finished
22:04:15.282 [info]  Job [9] started
22:04:16.349 [info]  Job [5] finished
22:04:16.349 [info]  Job [7] started
22:04:16.863 [info]  Job [8] finished
22:04:16.863 [info]  Job [10] started
22:04:17.119 [info]  Job [1] finished
22:04:17.119 [info]  Job [11] started
22:04:17.619 [info]  Job [4] finished
22:04:17.619 [info]  Job [12] started
22:04:18.138 [info]  Job [9] finished
22:04:18.138 [info]  Job [14] started
22:04:20.249 [info]  Job [11] finished
22:04:20.249 [info]  Job [15] started
22:04:21.580 [info]  Job [12] finished
22:04:21.580 [info]  Job [13] started
22:04:22.703 [info]  Job [10] finished
22:04:22.703 [info]  Job [17] started
22:04:23.124 [info]  Job [7] finished
```
