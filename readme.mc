ss-client
1.$ sudo add-apt-repository ppa:hzwhuang/ss-qt5
2.$ cd /etc/apt/sources.list.d
3.$ sudo mv hzwhuang-ubuntu-ss-qt5-bionic.list hzwhuang-ubuntu-ss-qt5-xenial.list
4.$ sudo vim hzwhuang-ubuntu-ss-qt5-xenial.list
    deb http://ppa:launchpad.net/hzwhuang/ss-qt5/ubuntu xenial main
    # deb-src http://ppa:launchpad.net/hzwhuang/ss-qt5/ubuntu xenial main
5.$ sudo apt-get update
6.$ sudo apt-get install shadowsocks-qt5

shadowsocks
wget --no-check-certificate -O shadowsocks-all.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-all.sh
chmod +x shadowsocks-all.sh
./shadowsocks-all.sh 2>&1 | tee shadowsocks-all.log
another way
apt-get install python-pip
pip install shadowsocks
sudo ssserver -p 443 -k password -m rc4-md5 --user nobody -d start
sudo ssserver -d stop
https://github.com/shadowsocks/shadowsocks/wiki/Shadowsocks-%E4%BD%BF%E7%94%A8%E8%AF%B4%E6%98%8E

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
