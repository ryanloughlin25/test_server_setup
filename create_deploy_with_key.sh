adduser --disabled-password --gecos "" deploy;
echo 'deploy:deploy' | chpasswd;
mkdir /home/deploy/.ssh;
chmod 700 /home/deploy/.ssh;
mv /root/id_rsa.pub /home/deploy/.ssh/authorized_keys;
chmod 400 /home/deploy/.ssh/authorized_keys;
chown deploy:deploy /home/deploy -R
echo "deploy ALL=(ALL) ALL" >> /etc/sudoers;
#sed commands to edit sshd_config
sed -i s/PermitRootLogin yes/PermitRootLogin no/g;
sed -i s/#PasswordAuthentication yes/PasswordAuthentication no/g;
service ssh restart;
