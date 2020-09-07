# MySQL Installation in Ubuntu



### Installing MySQL (with Debconf)


``` $ sudo apt-get install -y mysql-server``` 


We can see more information about the MySQL package using apt-cache:


``` $ sudo apt-cache show mysql-server``` 



#### Installing Without Prompts (Scriptable)

``` $ export DEBIAN_FRONTEND="noninteractive"``` 

``` $ sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password rootpw"``` 

``` $ sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password rootpw"``` 

``` $ sudo apt-get install -y mysql-server``` 

``` $ mysql_secure_installation``` 

##### We can install the debconf-get-selections tool to see what possible selections a package may have.

``` $ sudo apt-get install -y debconf-utils``` 

##### Then find debconf related to MySQL:

``` $ sudo debconf-get-selections | grep mysql``` 








----------------------------------







### Removing MySQL

#### print distribution-specific information

``` $ lsb_release -a ```


#### How to uninstall MySQL Ubuntu

``` $ sudo apt-get remove --purge mysql*```

``` $ sudo apt-get purge mysql*```

``` $ sudo apt-get autoremove```

``` $ sudo apt-get autoclean```

``` $ sudo apt-get remove dbconfig-mysql```

``` $ sudo apt-get dist-upgrade```

``` $ sudo apt-get install mysql-server```



#### How to remove MySQL Ubuntu (Alternative):

``` $ service mysql stop```

``` $ killall -KILL mysql mysqld_safe mysqld```

``` $ apt-get --yes purge mysql*```

``` $ apt-get --yes autoremove --purge```

``` $ apt-get autoclean```

``` $ deluser --remove-home mysql```

``` $ delgroup mysql```

``` $ rm -rf /etc/apparmor.d/abstractions/mysql /etc/apparmor.d/cache/usr.sbin.mysqld```

<!-- /etc/mysql /var/lib/mysql /var/log/mysql* /var/log/upstart/mysql.log*

/var/run/mysqld ~/.mysql_history

updatedb -->



#### Uninstall MySQL from Ubuntu and Install MariaDB


##### Step 1: Check that MySQL is installed

``` $ sudo systemctl status mysql```

``` $ sudo service mysql status```


##### Step 2: Uninstall MySQL

``` $ sudo systemctl stop mysql```

``` $ sudo apt-get remove --purge mysql-server mysql-client mysql-common```


##### Uninstall MySQL

``` $ sudo apt-get autoremove```

``` $ sudo apt-get autoclean```

``` $ sudo rm -rf /var/lib/mysql/```

``` $ sudo rm -rf /etc/mysql/```


##### Step 3: Install MariaDB

``` $ sudo apt-get install mariadb-server```

``` $ sudo systemctl status mysql```


<br /><br /><br />

source by: https://serversforhackers.com