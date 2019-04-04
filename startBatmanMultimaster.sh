# Load batman-adv kernel module 
sudo modprobe batman-adv

# Stop Network Manager (on robots, comment out for base station since we need ethernet connection)
sudo systemctl stop NetworkManager

# Run setupBatman shell script (will print "Cannot find deevice "bat0")
sudo ${PWD}/setupBatman.sh

# Run setupBatman shell script (will print "RTNETLINK answer: File exists")
sudo ${PWD}/setupBatman.sh

# Run setupMutlimaster shell script (will print "RTNETLINK answer: File exists")
sudo ${PWD}/setupMultimaster.sh
