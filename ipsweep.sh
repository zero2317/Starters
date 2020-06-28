#! /bin/bash

if [ "$1" == "" ]
then

echo "Please Provide The First Three Octets Of Your IP Address To Continue"
echo "Syntax ./ipsweep.sh (your ip octets)"

else

for ip in `seq 1 254` ; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done

fi
