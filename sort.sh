#!/usr/bin/env bash
# ------------------------------------------------------------ bubble_sort
# Not working currently && testing localy
bubble_sort () {
    arr=("$@")

    for i in ${arr[@]}; do
        for j in `seq 0 $((${#i[@]-1}))`; do
            if (($arr[j]>${arr[$((j+1))]})) ; then
                tmp=${arr[$j]}
                arr[$j]=${arr[$((j+1))]}
                arr[$((j+1))]=$tmp
            fi
        done
    done

    return ${arr[*]}
}

array=(4 2 1 3 5)
bubble_sort "$array[@]"
