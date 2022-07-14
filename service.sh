
#!/bin/bash

set -e

echo "==> nslookup -type=SRV _mongodb._tcp.cluster0.wmrh6.mongodb.net"
nslookup -type=SRV _mongodb._tcp.cluster0.wmrh6.mongodb.net
echo "==> end nslookup"

echo "==> nslookup google.com"
nslookup google.com
echo "==> end nslookup"


./vb.server.linux