#!/bin/bash

exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
wget https://busybox.net/downloads/binaries/1.31.0-defconfig-multiarch-musl/busybox-x86_64
sudo mv busybox-x86_64 /usr/bin/busybox
sudo chmod a+x  /usr/bin/busybox

cat > index.html <<EOF
<h1>Hello, World</h1>
<p> DB Address : ${db_address} </p>
<p> DP Port: ${db_port} </p>
EOF

nohup busybox httpd -f -p ${server_port} &