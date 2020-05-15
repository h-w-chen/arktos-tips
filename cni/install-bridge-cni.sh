sudo mkdir -p /opt/cni/bin/
wget -nv -O - https://github.com/containernetworking/plugins/releases/download/v0.8.2/cni-plugins-linux-amd64-v0.8.2.tgz | sudo tar -C /opt/cni/bin/ -xzv
## additionally, bridge.conf must be present under /etc/cni/net.d/

