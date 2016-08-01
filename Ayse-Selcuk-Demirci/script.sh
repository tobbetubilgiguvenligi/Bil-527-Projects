#!/bin/bash

#server makinesinde yapılacaklar
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install openvpn easy-rsa
sudo mkdir /etc/openvpn/easy-rsa
sudo cp -R /usr/share/openvpn/easy-rsa/* /etc/openvpn/easy-rsa
sudo cd /etc/openvpn/easy-rsa
sudo nano vars
# vars dosyasında aşağıdaki parametreler isteğe bağlı olarak değiştirilebilir
# export KEY_COUNTRY="TR"
# export KEY_PROVINCE="Network Defense"
# export KEY_CITY="ANKARA"
# export KEY_ORG="TOBB ETU"
# export KEY_EMAIL=networkdefense@gmail.com
# export KEY_CN="NetworkDefense"
## x509 Subject Field
# export KEY_NAME="NetworkDefense"
# export KEY_OU="NetworkDefense"
sudo su
source vars
./clean-all
./build-ca
./build-key-server testserver
source vars
./clean-all
./build-dh
sudo cd keys
sudo cp testserver.crt testserver.key ca.crt dh2048.pem /etc/openvpn
cd ..
source vars
./build-key testclient
sudo tar –cf clientsertifika.tar /etc/openvpn/ca.crt /etc/openvpn/easy-rsa/keys/testclient.crt /etc/openvpn/easy-rsa/keys/testclient.key
sudo mv /etc/openvpn/easy-rsa/keys/testclient.crt etc/openvpn/easy-rsa/keys/testclient.crt_yedek
sudo mv /etc/openvpn/easy-rsa/keys/testclient.key etc/openvpn/easy-rsa/keys/testclient.key_yedek
sudo cd /etc/openvpn
sudo cp /usr/share/doc/openvpn/examples/sample-config-files/server.conf.gz /etc/openvpn
sudo cp /usr/share/doc/openvpn/examples/sample-config-files/client.conf /etc/openvpn
sudo gzip –d /etc/openvpn/server.conf.gz
sudo cd /etc/openvpn
sudo su
nano /etc/openvpn/server.conf
# server.conf dosyasına veriler girilir

echo "1" > /proc/sys/net/ipv4/ip_forward 
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
iptables -A FORWARD -i eth0 -o tun0 -m state --state RELATED,ESTABLISHED -j ACCEPT iptables -A FORWARD -i tun0 -o eth0 -j ACCEPT
iptables-save 
exit 0

sudo /etc/init.d/openvpn restart 
sudo openvpn /etc/openvpn/server.conf 

#client makinasında yapılacaklar
sudo apt-get update
sudo apt-get install openvpn
sudo mkdir /etc/openvpn
sudo cd /etc/openvpn
sudo cp /usr/share/doc/openvpn/examples/sample-config-files/client.conf client.conf
sudo tar -cvf /etc/openvpn/clientsertifika.tar 
sudo nano /etc/openvpnclient.conf

# client.conf dosyasına veriler girilir
sudo /etc/init.d/openvpn restart 
sudo openvpn /etc/openvpn/client.conf
