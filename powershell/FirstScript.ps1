# My first script

echo "BALETA SECURITY"
echo "Current directory: $(pwd)"
echo "Current User: $(whoami)"
echo "Ping Sweep"
$ip = Read-Host "Type the IP address: "
# $port = Read-Host "Type port: "

echo "Performing ping on $ip"
ping -n 1 $ip