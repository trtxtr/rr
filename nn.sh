apt install ca-certificates apt-transport-https -y
wget -q https://packages.sury.org/php/apt.gpg -O- |  apt-key add -
echo "deb https://packages.sury.org/php/ stretch main" |  tee /etc/apt/sources.list.d/php.list
apt update
apt install -y curl \
vim-nox \
make \
gcc \
g++ \
binutils \
sudo \
git \
libtool \
pkg-config \
libnewt-dev \
subversion \
libncurses5-dev \
uuid-dev \
libjansson-dev \
libxml2-dev \
libsqlite3-dev \
default-libmysqlclient-dev \
default-libmysqlclient-dev \
unixodbc-dev \
libssl-dev \
libcurl4-openssl-dev \
libgnutls28-dev \
libsrtp0-dev \
bison \
flex \
sox \
lame \
flac \
mpg123 \
libmpg123-dev \
libogg-dev \
libvorbis-dev \
libspeex-dev \
libspeexdsp-dev \
libasound2-dev \
libiksemel-dev \
libiksemel-utils \
libspandsp-dev \
libical-dev \
libneon27-dev \
apache2 \
mysql-server \
mysql-client \
php5.6 \
php5.6-curl \
php5.6-cli \
php5.6-mysql \
php5.6-gd \
php-pear \
unixodbc \
sqlite3 \
dos2unix \
net-tools \
fail2ban \
python2.7

cd /usr/src
wget http://guncelleme.telsam.com.tr/santral/pbx/pjproject-2.7.2.tar.bz2
tar -xjvf pjproject-2.7.2.tar.bz2
cd /usr/src/pjproject-2.7.2
CFLAGS='-DPJ_HAS_IPV6=1' ./configure --prefix=/usr --enable-shared --disable-sound --disable-resample --disable-video --disable-opencore-amr
make dep
make
make install
ldconfig
ldconfig -p | grep pj
