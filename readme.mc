shadowsocks
wget --no-check-certificate -O shadowsocks-all.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-all.sh
chmod +x shadowsocks-all.sh
./shadowsocks-all.sh 2>&1 | tee shadowsocks-all.log

frp-server
https://post.smzdm.com/p/566063
wget https://raw.githubusercontent.com/MvsCode/frp-onekey/master/install-frps.sh -O ./install-frps.sh
chmod 700 ./install-frps.sh
./install-frps.sh install

frp-client
wget https://github.com/fatedier/frp/releases/download/v0.29.0/frp_0.29.0_linux_amd64.tar.gz

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
