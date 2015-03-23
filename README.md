# testing rackspace server setup
* create server with public key
* on local machine run following commands

```
ssh root@<server_ip_address> "curl https://raw.githubusercontent.com/ryanloughlin25/test_server_setup/master/create_deploy_with_key.sh | bash"
```
```
ssh deploy@<server_ip_address> "curl https://raw.githubusercontent.com/ryanloughlin25/test_server_setup/master/install.sh | bash"
```
