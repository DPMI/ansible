set -e

cd $1
shift 1
autoreconf -sif
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var/lib "$@"
make
make install
