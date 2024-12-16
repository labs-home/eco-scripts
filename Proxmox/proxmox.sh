###########################################################
#  ______          _____               
# |  ____|        |  __ \              
# | |__   ___ ___ | |__) | __ _____  __
# |  __| / __/ _ \|  ___/ '__/ _ \ \/ /
# | |___| (_| (_) | |   | | | (_) >  < 
# |______\___\___/|_|   |_|  \___/_/\_\
#
# Proxmox Power Management Script
# Author: Foggy-J
#
# Toggles power states between performance and power saving
#
###########################################################

# Check if an argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 [performance|powersave]"
    exit 1
fi

# Set the power state based on the argument
if [ "$1" = "performance" ] || [ "$1" = "powersave" ]; then
    echo "$1" > /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
else
    echo "Invalid argument: $1"
    echo "Usage: $0 [performance|powersave]"
    exit 1
fi