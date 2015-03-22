adduser --disabled-password --gecos "" deploy;
echo 'deploy:deploy' | chpasswd;
echo "deploy ALL=(ALL) ALL" >> /etc/sudoers;
