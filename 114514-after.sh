modprobe ploop
modprobe pfmt_ploop1
modprobe pfmt_raw
modprobe pio_direct
wget -O /usr/libexec/ovz-template-converter https://raw.githubusercontent.com/solusvm-support/svm_patches/master/ovz-template-converter.patched && chmod +x /usr/libexec/ovz-template-converter
yum install -y python36-pip python-configobj && pip3 install configobj
vzpkg create cache debian-10.0 ubuntu-20.04 centos-8 centos-7
