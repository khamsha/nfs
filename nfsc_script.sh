yum install -y nfs-utils
systemctl enable firewalld --now
systemctl status firewalld
cat << EOF > /etc/fstab
192.168.50.10:/srv/share/ /mnt nfs vers=3,proto=udp,noauto,x-systemd.automount 0 0
EOF
systemctl daemon-reload
systemctl restart remote-fs.target