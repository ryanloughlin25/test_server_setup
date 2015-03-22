adduser --disabled-password --gecos "" deploy;
echo 'deploy:deploy' | chpasswd;
mkdir /home/deploy/.ssh;
chmod 700 /home/deploy/.ssh;
mv /root/id_rsa.pub /home/deploy/.ssh/authorized_keys;
chmod 400 /home/deploy/.ssh/authorized_keys;
mv install.sh /home/deploy;
mv install_ruby_rails.sh /home/deploy;
chown deploy:deploy /home/deploy -R
echo "deploy ALL=(ALL) ALL" >> /etc/sudoers;
sed -i "s/PermitRootLogin yes/PermitRootLogin no/g" /etc/ssh/sshd_config;
sed -i "s/#PasswordAuthentication yes/PasswordAuthentication no/g" /etc/ssh/sshd_config;
service ssh restart;
rm create_deploy_with_key.sh;
