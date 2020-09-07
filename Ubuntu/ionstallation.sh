export DEBIAN_FRONTEND="noninteractive"

sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password rootpw"

sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password rootpw"

sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5072E1F5

cat <<- EOF > /etc/apt/sources.list.d/mysql.list
deb http://repo.mysql.com/apt/ubuntu/ trusty mysql-5.7
EOF

sudo apt-get update

sudo apt-get install -y mysql-server-5.7

mysql_secure_installation

