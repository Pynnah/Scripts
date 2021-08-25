#!/bin/python
import subprocess

# NOTE: nvidia-smi, to the extent of my knowledge, only works with the proprietary NVIDIA drivers. If you are using the open-source Noveau drivers, this script will not function.

used_encoded = subprocess.check_output(["nvidia-smi", "--query-gpu=memory.used", "--format=csv,noheader,nounits","|","tr","'\n'","' '"]) # the amount of memory being used in MiB
total_encoded = subprocess.check_output(["nvidia-smi", "--query-gpu=memory.total", "--format=csv,noheader,nounits"]) # the total amount of memory in MiB

used = int(used_encoded.decode())
total = int(total_encoded.decode())
percentage = round((used / total) * 100, 2)

print(percentage,"%",sep="")
