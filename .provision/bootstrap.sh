#!/usr/bin/env bash

echo "Provisioning Virtual Machine..."

echo "Installing Git..."
    sudo yum install git -y

echo "Install Dependency Packages for APC..."
    sudo yum install -y php56u-pear php56u-devel httpd-devel pcre-devel gcc make

echo "Installing APC(u)..."
    sudo yum install php56u-pecl-apcu

echo "Installing mod_ssl for apache"
    sudo yum install -y mod_ssl

echo "Installing mcrypt for php5.6..."
    wget http://dl.fedoraproject.org/pub/epel/7/x86_64/l/libmcrypt-2.5.8-13.el7.x86_64.rpm
    rpm -Uvh libmcrypt-2.5.8-13.el7.x86_64.rpm
    sudo yum install -y php56u-mcrypt

echo "Installing Xdebug..."
    sudo yum install -y gcc gcc-c++ autoconf automake

    pecl install Xdebug

echo "Installing Redis PHP Extension..."
    sudo pecl install redis-2.2.8

sudo systemctl restart httpd
sudo setenforce Permissive
echo "Everything seems okay...booting machine..."
