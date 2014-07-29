#!/bin/sh

echo "Profile:"
./profile 9999999
gprof -b profile > temp.profile
sed -n '4,12p' temp.profile

#echo "Profile optimized:"
#./profile_opt 9999999
#gprof -b profile_opt > temp.profileopt
#sed -n '4,12p' temp.profileopt
