#!/bin/sh
aptitude install libxml2-dev libcurl4-openssl-dev php5-dev
wget http://pecl.php.net/get/solr-1.0.2.tgz
tar xvfz solr-1.0.2.tgz
cd ./solr-1.0.2
phpize
./configure
make
make install
echo "Creating config file for solr\n"
echo "extension=solr.so" > /etc/php5/apache2/conf.d/solr.ini
service apache2 restart

