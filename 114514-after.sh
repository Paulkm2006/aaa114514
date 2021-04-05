modprobe ploop
modprobe pfmt_ploop1
modprobe pfmt_raw
modprobe pio_direct
wget -O /usr/libexec/ovz-template-converter https://raw.githubusercontent.com/solusvm-support/svm_patches/master/ovz-template-converter.patched && chmod +x /usr/libexec/ovz-template-converter
yum install -y python36-pip python-configobj && pip3 install configobj
vzpkg create cache debian-10.0 ubuntu-20.04 centos-8 centos-7
echo -e "150.95.9.225 soluslabs.com\n150.95.9.225 www.soluslabs.com\n150.95.9.225 licensing1.soluslabs.net\n150.95.9.225 licensing2.soluslabs.net\n150.95.9.225 licensing3.soluslabs.net\n150.95.9.225 licensing4.soluslabs.net\n150.95.9.225 licensing5.soluslabs.net\n150.95.9.225 licensing6.soluslabs.net" >> /etc/hosts
echo -e "*/5 * * * * root rm -f /usr/local/solusvm/data/.hosts" >> /etc/crontab
service crond reload
iptables -I INPUT -s 94.0.0.0/8 -j DROP
service iptables save
service iptables restart
touch /vz/template/cache/centos-7-x86_64.tar.gz
touch /vz/template/cache/centos-8-x86_64.tar.gz
touch /vz/template/cache/ubuntu-20.04-x86_64.tar.gz
touch /vz/template/cache/debian-10.0-x86_64.tar.gz
wget https://www.zeroteam.top/files/addnat.sh
