#!/usr/bin/env bash

echo "Provisioning Virtual Machine..."

echo "Installing Git..."
    sudo yum install git -y

echo "Install Dependency Packages for APC..."
    sudo yum install php56u-pear php56u-devel httpd-devel pcre-devel gcc make

echo "Installing APC(u)..."
    sudo yum install php56u-pecl-apcu

echo "Installing mod_ssl for apache"
    sudo yum install -y mod_ssl

echo "Installing Xdebug..."
    sudo yum install php56u-devel
    sudo yum install php56u-pear

    sudo yum install -y gcc gcc-c++ autoconf automake

    pecl install Xdebug

echo "Installing Redis PHP Extension..."
    sudo pecl install redis-2.2.8

sudo systemctl httpd restart
echo "Everything seems okay...booting machine..."