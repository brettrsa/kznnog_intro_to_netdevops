#!/bin/bash
#
# check for if guest ssid exists
#

for i in `egrep fw /etc/hosts | egrep jhb | awk '{print $3}'`; do

    check=$(fnlogin -c "config vdom;edit root;show wireless-controller vap" $i | egrep ' set ssid' | grep guest | wc -l)
    if [ $check -eq 1 ]; then
        printf "$i --> FOUND\n"
    else
        printf "$i --> NOT FOUND\n"

    fi

done
