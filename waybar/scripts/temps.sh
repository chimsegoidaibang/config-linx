#!/bin/bash

# CPU temp
# GPU temp (amdgpu)
CPU=$(sensors | awk '/Tctl/ {gsub(/[+°C]/, "", $2); print $2}' | head -n1)
GPU=$(sensors | awk '/edge/ {gsub(/[+°C]/, "", $2); print $2}' | head -n1)

echo "CPU $CPU GPU $GPU"

