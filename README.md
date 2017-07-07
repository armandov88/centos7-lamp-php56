# CentOS 7 + LAMP Base Machine

This is my primary base for creating a CentOS VM. Primarily used with legacy PHP applications.

### The Stack

    1.) CentOS 7
    
    2.) PHP 5.6.30

    3.) MariaDB (MySQL)

    4.) Apache 2.4

### WHATS IN THE BOX??!
![alt text](https://cnet3.cbsistatic.com/img/U2LRDk7z34-x736xlLWgn8KtCpQ=/fit-in/570x0/2017/01/14/6d8103f7-a52d-46de-98d0-56d0e9d79804/se7en.png "What's in the box??!")

    1.) Composer
    2.) Git
    3.) XDebug 
    4.) Redis

### How do I get started?

To get started, clone or fork this repo and change your settings in the Vagrantfile to suite your development environment.
You will also need [Virtual Box](https://www.virtualbox.org/wiki/Downloads) and [Vagrant](https://www.vagrantup.com/) installed prior to running the machine.

* cd /projects (Where your projet will live)

* git clone https://github.com/armandov88/centos7-lamp-php56.git

* cd /centos7-lamp-php56

* Modify your Vagrantfile to suit your project needs.

* clone or copy your site project into the directory so it should look like: "/centos7-base-lamp-php56/my-awesome-project"

* run vagrant up; vagrant ssh

* Vagrant will do it's magic and your server is up and running. 

If you need anything NOT included with the base of this box, feel free to add to it. This is just a base and not meant to be a kitchen-sink type project.


### XDebug

Although the machine has XDebug installed, it is not active by default to do that, simply:

> sudo vi /etc/php.ini

At the very bottom of the page, add the following lines:

[Xdebug]
zend_extension = /usr/lib64/php/modules/xdebug.so
xdebug.default_enable=1
xdebug.remote_handler=dbgp
xdebug.remote_enable = 1
xdebug.remote_connect_back = 1
xdebug.remote_host=10.0.2.15
xdebug.remote_port=9000
xdebug.remote_log=/temp/xdebug.log

Save your changes and restart apache:

> sudo systemctl restart httpd
