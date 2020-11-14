# `jaclfb`
**j**ust **a** **c**razily **l**arge **f**izz**b**uzz.

Also known as *a somehow-stupid, somehow-effective comparison of somehow-not-so-useful Python and Julia basic instructions and their execution times; with a somehow-scenic effect, though*. 🙃


---

#### Example usage (`bash` | `zsh` |`fish` shell):

```bash
echo "" > txout_py.txt
time python fizzbuzz.py >> txout_py.txt
echo "" > txout_jl.txt
time julia fizzbuzz.jl >> txout_jl.txt
md5sum txout_py.txt txout_jl.txt
```

#### Example output (`fish` shell):

```text
________________________________________________________
Executed in   11.50 secs   fish           external
   usr time   11.27 secs  795.00 micros   11.27 secs
   sys time    0.19 secs  448.00 micros    0.19 secs


________________________________________________________
Executed in    4.85 secs   fish           external
   usr time    4.52 secs  340.00 micros    4.52 secs
   sys time    0.31 secs  191.00 micros    0.31 secs

95128b220341e50c0d16a2078fe8eb10  txout_py.txt
95128b220341e50c0d16a2078fe8eb10  txout_jl.txt
```
