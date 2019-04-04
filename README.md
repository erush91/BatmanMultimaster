# BatmanMultimaster

1. Export ROS_MASTER_URI in .bashrc file (localhost or <hostname>)

export ROS_MASTER_URI=http://localhost:11311


2. Install batctl

>> sudo apt install batctl

3. Make sure /etc/hosts file includes correct batman-specific IP addresses

e.g.

>> 127.0.0.1       localhost
>>
>> 192.168.100.51  A01
>> 192.168.100.52  A02
>> 192.168.100.101 G01
>> 192.168.100.201 B01

4. Make shell scripts executable

>> chmod +x setupBatman.sh
>> chmod +x setupMultimaster.sh
>> chmod +x startBatmanMultimaster.sh

5. Edit setupBatman.sh Line 18: Specify static IP address of local machine (you get to choose)

e.g.

>> ARG1=${1:-192.168.100.51}

6. Edit setupBatman.sh Line 35: Specify WiFi device ID (find from ifconfig)

e.g. wlx001986513db2

wlx001986513db2: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
        ether 00:19:86:51:3d:b2  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

7. Run batman and multimaster

sudo ./startBatmanMultimaster.sh

8. Test batman on two machines, should be able to see each other as neighbors

>> sudo batctl n

9. Launch multimaster (https://github.com/erush91/multimaster_fkie), you should be able to see all machines

>> roslaunch master_discovery run_multimaster.launch
