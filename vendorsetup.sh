#!/bin/bash

if ! command -v croot &> /dev/null; then
    echo "What are you trying to do by running this sh on its own? smh"
    exit 1
fi

croot

echo "Fetching patches for hardware/lineage/compat"
cd hardware/lineage/compat/
git fetch https://github.com/LineageOS/android_hardware_lineage_compat refs/changes/94/400894/4
git fetch https://github.com/LineageOS/android_hardware_lineage_compat refs/changes/64/400964/1
git cherry-pick FETCH_HEAD

croot

echo "Fetching patches for hardware/lineage/interfaces"
cd hardware/lineage/interfaces
git fetch https://github.com/bengris32/android_hardware_lineage_interfaces cacfae73e44d18f8bba2bbe327d5c0d5cbafe4f1
git cherry-pick FETCH_HEAD

croot