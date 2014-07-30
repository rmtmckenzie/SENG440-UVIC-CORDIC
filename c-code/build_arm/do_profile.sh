#!/bin/sh

echo "Profile:"
qemu-arm profile 4000000
gprof -b profile > temp.profile
sed -n '4,18p' temp.profile

#echo "Profile optimized:"
#./profile_opt 9999999
#gprof -b profile_opt > temp.profileopt
#sed -n '4,12p' temp.profileopt
