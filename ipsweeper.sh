#!/bin/bash

if ["$1" == ""]
then
        echo "incorrect syntax"
        echo "include first three fields of ip address"
else
        for i in {1..254}
                do
                        ping -c 1 $1.$i | grep 64 | cut -d ' ' -f 4 | cut -d ':' -f 1 &
                done
fi
