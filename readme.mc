shadowsocks
sudo apt install shadowsocks-libev
sudo vim /etc/shadowsocks-libev/config.json

sudo vim /etc/sysctl.conf
"server":["::1", "0.0.0.0"](Taking care about firewall)

#BBR configuration
net.core.default_qdisc=fq
net.ipv4.tcp_congestion_control=bbr

sysctl -p
lsmod |grep bbr

frp-server

server
 ./frps -c frps.ini
[common]
bind_port = 5443
bind_addr = 0.0.0.0
token = huan@SUNYUN1
dashboard_port = 7500
dashboard_user = oycq1997
dashboard_pwd = 1234qwer
~

client
[common]
token = huan@SUNYUN1
server_addr = 47.100.76.211
server_port = 5443
admin_addr = 127.0.0.1
admin_port = 7400
admin_user = oycq1997
admin_pwd = 1234qwer

[vultr_ssh]
type = tcp
local_ip = 127.0.0.1
local_port = 22
remote_port = 64

[vultr_frpc_ui]
type = tcp
local_ip = 127.0.0.1
local_port = 7400
remote_port = 6400

[vultr_shadowsocks]
type = tcp
local_ip = 127.0.0.1
local_port = 10870
remote_port = 22345
