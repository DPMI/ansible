set -e
cd $1
install -m 0755 -o root -g root dist/debian-conf /etc/default/marcd
install -m 0755 -o root -g root dist/debian-init /etc/init.d/marcd
chown marc:marc /var/lib/marc
