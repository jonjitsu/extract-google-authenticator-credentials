#!/bin/bash

mkdir -p ./data && adb shell "su -c 'mkdir -p /sdcard/98862587-3283-4c73-91b9-1d3cac192673; cp /data/data/com.google.android.apps.authenticator2/databases/databases /sdcard/98862587-3283-4c73-91b9-1d3cac192673;'" && adb pull /sdcard/98862587-3283-4c73-91b9-1d3cac192673/databases ./data && adb shell "su -c 'rm -r /sdcard/98862587-3283-4c73-91b9-1d3cac192673'"


