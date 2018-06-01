#!/bin/bash
#
# loop through an array of values and output qos values
#
# start
#


#if [ "$1" = "" ]; then
#       echo "Syntax Error: qos 1024"
#       exit
#fi

# declare array with values
bw_values=( 4096 5120 8192 10240 20480 51200)

for i in "${bw_values[@]}"; do

    cir=`echo "$i*1000" | bc | sed -e 's/\.0//g'`
    bc=`echo "($cir/8)*1.5" | bc | sed -e 's/\.0//g'`
    be=`echo "$bc*2" | bc | sed -e 's/\.0//g'`

    echo -e 'Speed --> ' $i
    echo -e "rate-limit input $cir $bc $be conform-action continue exceed-action drop"
    echo -e "rate limit output $cir $bc $be conform-action continue exceed-action drop"
    printf '\n'

done

# end
