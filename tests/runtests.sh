#!/bin/bash
for ford in $(ls)
do
    if [[ -d $ford ]]
    then
        pushd $ford >/dev/null
        ./runtest.sh
        popd >/dev/null
    fi
done
