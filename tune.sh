#!/bin/bash


MAX_WATTS=110

nvidia-smi -q -d POWER

sudo nvidia-smi -pl ${MAX_WATTS}


sudo nvidia-settings -a "[gpu:0]/GPUFanControlState=1"
sudo nvidia-settings -a "[fan:0]/GPUTargetFanSpeed=75"
sudo nvidia-settings -a "[gpu:0]/GPUGraphicsClockOffset[3]=-200"
sudo nvidia-settings -a "[gpu:0]/GPUMemoryTransferRateOffset[3]=1200"

