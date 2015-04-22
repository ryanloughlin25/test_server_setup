# testing rackspace server setup
* create server with public key by following the instructions here http://www.rackspace.com/knowledge_center/article/connecting-to-a-server-using-ssh-on-linux-or-mac-os
* on local machine run following commands

```
ssh root@<server_ip_address> "curl https://raw.githubusercontent.com/ryanloughlin25/test_server_setup/master/create_deploy_with_key.sh | bash"
```
```
ssh -t deploy@<server_ip_address> "curl https://raw.githubusercontent.com/ryanloughlin25/test_server_setup/master/install.sh | bash"
```

It will request the SUDO password for deploy which is 'deploy'
