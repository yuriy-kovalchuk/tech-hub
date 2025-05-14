terraform

```
cd infrastructure-as-code/terraform/scripts/
```


```
./tf-init.sh
```

```
./tf-plan.sh
```

```
./tf-apply.sh
```

```
cd ../src
```


```
terraform output -raw ssh_private_key > my_private_key.pem
```

```
chmod 600 my_private_key.pem
```

```
ssh -i my_private_key.pem azureadmin@172.201.180.6
```

```
lsb_release -a
```


ansible

- get public ip and place it in hosts.ini

```
cd infrastructure-as-code/ansible
```

```
cd infrastructure-as-code/ansible/playbooks
```

```
ansible-playbook playbooks/install_nginx.yaml
```

