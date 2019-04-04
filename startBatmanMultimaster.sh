# Load batman-adv kernel module 
sudo modprobe batman-adv

# Stop Network Manager (so it does not disconnect from bat / reconnect to normal WiFi automatically)
#sudo systemctl stop NetworkManager

# Run setupBatman shell script (will print "Cannot find deevice "bat0")
sudo ${PWD}/setupBatman.sh

# Run setupBatman shell script (will print "RTNETLINK answer: File exists")
sudo ${PWD}/setupBatman.sh

# Run setupMutlimaster shell script (will print "RTNETLINK answer: File exists")
sudo ${PWD}/setupMultimaster.sh
