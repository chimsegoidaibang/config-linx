#!/bin/bash
freq=$(awk '{print $1/1000000}' /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq)
printf "%.2fGHz" "$freq"

