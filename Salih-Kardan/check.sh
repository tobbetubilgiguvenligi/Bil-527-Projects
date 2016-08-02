#!/bin/bash

echo "MySQL sikilastirma adimlar 12 tanedir. Bu adimlarin hepsi script ile kontrol edilebilir durumda degil. Bunlardan 7 tanesi kontrol edilebilir."
counter=0

echo "Checking if mysql deamon run by mysql user"
is_user_mysql=`ps -u mysql`
echo "$is_user_mysql" | grep -q "mysqld"
if [ $? -eq 0 ]; then
  echo "mysql daemon run by mysql user"
  let "counter += 1"
else 
  echo "mysql daemon is not run by mysql user"
fi

echo "checking if mysql configuration file is owned by root"
is_owned_by_root=`stat -c  "%G" /etc/mysql/my.cnf`
if [ $is_owned_by_root == "root" ]; then
    echo "mysql configuration file is owned by root user"
    let "counter += 1"
else 
    echo "mysql configuration file is not owned by root user. It's user is $is_owned_by_root."
fi

bind_address=`cat /etc/mysql/my.cnf | grep bind-address`
IFS="=" read name value <<< $bind_address
echo "checking bind address value in /etc/mysql/my.cnf configuration file"
if [ $value == "127.0.0.1" ];then 
  echo "bind address is 127.0.0.1"
  let "counter += 1"
else 
  echo "bind address is not 127.0.0.1"
fi 

echo "checking local_file is enabled"
local_infile=`cat /etc/mysql/my.cnf | grep local-infile`
if [ -z $local_infile ]; then
  echo "local infile is disabled"
else 
  echo "local infile is enabled"
  let "counter += 1"
fi

echo "checking certification authority is enabled"
ssl_ca=`cat /etc/mysql/my.cnf | grep ssl-ca`
if [ -z $ssl_ca ]; then
  echo "ssl-ca configration is missing"
else
  echo "ssl-ca configuration exists."
  let "counter += 1"
fi 

echo "checking ssl certifation file"
ssl_cert=`cat /etc/mysql/my.cnf | grep ssl-cert`
if [ -z $ssl_ca ]; then
  echo "ssl-cert configration is missing"
else
  echo "ssl-cert configuration exists."
  let "counter += 1"
fi 

echo "checking ssl key file"
ssl_key=`cat /etc/mysql/my.cnf | grep ssl-key`
if [ -z $ssl_key ]; then
  echo "ssl-key configration is missing"
else
  echo "ssl-key configuration exists."
  let "counter += 1"
fi 

echo "$counter/7 adim kontrolden basari ile gecmistir."
echo $(( ( 100 * counter ) / 7 ))"% oraninda sikilastirma adimlarina uygunluk tespit edilmistir"
