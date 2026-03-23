#!/usr/bin/env fish
sleep 5
g++ -Ofast -march=native -flto -fuse-linker-plugin fizzbuzz.cpp -o cppfb.x
sleep 5
echo "" > txout_py.txt
echo "" > txout_jl.txt
echo "" > txout_cpp.txt
sleep 5
time python fizzbuzz.py >> txout_py.txt
sleep 5
time julia fizzbuzz.jl >> txout_jl.txt
sleep 5
time ./cppfb.x >> txout_cpp.txt
sleep 5
time root -q -b fizzbuzzroot.cpp >> txout_root.txt
sleep 5
md5sum txout_py.txt txout_jl.txt txout_cpp.txt txout_root.txt
sleep 5
