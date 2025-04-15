echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null
./sync.sh
sleep 2
gh codespace stop -c $(gh codespace list --json name --jq '.[0].name')