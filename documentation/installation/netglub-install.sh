#!/bin/bash

dir='/opt/netglub'

# apt-get install dependencies
sudo apt-get install build-essential python-simplejson mysql-server libmysqlclient-dev zlib1g-dev libperl-dev libnet-ip-perl libopenssl-ruby ruby-dev ruby omt php5-cli
sudo apt-get install libnet-dns-perl libnet-ip-perl python-dev qt4-qmake qt-sdk
sudo apt-get install libglib2.0-dev libSM-dev libxrender-dev libfontconfig1-dev libxext-dev

# install json
[ ! -d $dir/temp ] && mkdir $dir/temp
cd $dir/temp
wget http://pypi.python.org/packages/source/s/simplejson/simplejson-2.1.5.tar.gz && tar -xzvf simplejson-2.1.5.tar.gz
rm -rf simplejson-2.1.5.tar.gz && cd simplejson-2.1.5
sudo python setup.py build && sudo python setup.py install

# install PyXML
wget http://sourceforge.net/projects/pyxml/files/pyxml/0.8.4/PyXML-0.8.4.tar.gz
tar -xvzf PyXML-0.8.4.tar.gz && rm -rf PyXML-0.8.4.tar.gz
cd PyXML-0.8.4 && wget http://launchpadlibrarian.net/31786748/0001-Patch-for-Python-2.6.patch
patch -p1 < 0001-Patch-for-Python-2.6.patch && sudo python setup.py install

# install graphviz
# wget http://www.graphviz.org/pub/graphviz/stable/SOURCES/graphviz-2.26.3.tar.gz
# tar -xzvf graphviz-2.26.3.tar.gz
# cd graphviz-2.26.3 && ./configure
# make && sudo make install

# install xmlrpc
wget http://sourceforge.net/projects/xmlrpc-c/files/Xmlrpc-c%20Super%20Stable/1.16.34/xmlrpc-c-1.16.34.tgz
tar -zxvf xmlrpc-c-1.16.34.tgz && rm -rf xmlrpc-c-1.16.34.tgz
cd xmlrpc-c-1.16.34
./configure
make && sudo make install

# compile netglub
#cd $dir/enumeration && wget http://redmine.lab.diateam.net/attachments/download/1/netglub-1.0.tar.gz
#tar -xzvf netglub-1.0.tar.gz && rm -rf netglub-1.0.tar.gz
#mv netglub-1.0 netglub
#cd $dir/enumeration/netglub/qng/
#qmake -qt=4 && make
