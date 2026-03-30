# `jaclfb`

**j**ust **a** **c**razily **l**arge **f**izz**b**uzz.

Also known as _a somehow-stupid, somehow-effective comparison of somehow-not-so-useful Python and Julia basic instructions and their execution times; with a somehow-scenic effect, though_. 🙃

---

#### Run the benchmark (`fish` shell):

```bash
./benchmark.sh
```

To clean up generated files afterwards:

```bash
./clean.sh
```

#### Example output:

```text
________________________________________________________
Executed in    6.52 secs    fish           external
   usr time    6.44 secs  733.00 micros    6.44 secs
   sys time    0.05 secs    0.00 micros    0.05 secs


________________________________________________________
Executed in    1.95 secs    fish           external
   usr time    1.81 secs  122.00 micros    1.81 secs
   sys time    0.12 secs  269.00 micros    0.12 secs


________________________________________________________
Executed in  990.50 millis    fish           external
   usr time  845.69 millis  294.00 micros  845.39 millis
   sys time  140.24 millis   38.00 micros  140.20 millis


________________________________________________________
Executed in  730.60 millis    fish           external
   usr time  686.47 millis  441.00 micros  686.02 millis
   sys time   43.12 millis  154.00 micros   42.96 millis

37616df2c3ff24388a7d05004b409275  txout_py.txt
37616df2c3ff24388a7d05004b409275  txout_jl.txt
37616df2c3ff24388a7d05004b409275  txout_cpp.txt
37616df2c3ff24388a7d05004b409275  txout_root.txt
```

That is: **Python** (~6.52s), **Julia** (~1.95s), **ROOT/Cling** (~990ms), **compiled C++** (~731ms). Well, that was fast!
