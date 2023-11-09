#!/system/bin/bash

# This script is needed to automatically set device props.

prjName=$(cat /proc/oplusVersion/prjVersion)
echo $prjName

case $prjName in
    "20682")
        resetprop "ro.product.model" "realme 7"
        resetprop "ro.product.name" "RMX2155"
        resetprop "ro.build.product" "RMX2155"
        resetprop "ro.product.device" "RMX2155L1"
        ;;
    *)
esac

exit 0
