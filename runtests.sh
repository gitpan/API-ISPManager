#!/bin/bash

perl -Ilib ./vdsmanager.pl --host=127.0.0.1 --username=admin  --password=qqqq  \
 --nodeid=1 --vpspassword=qwerty --owner=admin --preset=OVZ-1 --os=centos-5-x86_64 \
 --name=mymegavps7.ru
