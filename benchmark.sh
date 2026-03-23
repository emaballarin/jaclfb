#!/usr/bin/env fish
g++ -Ofast -march=native -flto -fuse-linker-plugin fizzbuzz.cpp -o cppfb.x
echo -n > txout_py.txt
echo -n > txout_jl.txt
echo -n > txout_cpp.txt
echo -n > txout_root.txt
sleep 5
time python fizzbuzz.py >> txout_py.txt
sleep 5
time julia fizzbuzz.jl >> txout_jl.txt
sleep 5
time root -q -b fizzbuzz_root.cpp >> txout_root.txt
sleep 5
time ./cppfb.x >> txout_cpp.txt
tail -n +12 txout_root.txt > txout_root_trimmed.txt
mv txout_root_trimmed.txt txout_root.txt
md5sum txout_py.txt txout_jl.txt txout_cpp.txt txout_root.txt
