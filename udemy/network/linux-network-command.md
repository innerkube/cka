
# netstat count
netstat -npa | grep -i etcd | grep 2380 | wc -l 
netstat -nplt | grep scheduler


# special insterface status

ip link show cni0

# interface

ip address
ip link


# cni interface 

ip address show type bridge

# routing

ip route 
route

# netstat

netstat --help

netstat | grep -l scheduler
