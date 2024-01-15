# AnssibleKodekloud

## Config

Can be in :

- EN_VAR ANSIBLE_GATHERING=explicit ANSIBLE_+param_name
- local file /web-playbooks/ansible.cfg
- ansible conf file :etc/ansible/ansible.cfg

```bash
ansible-config list # Lists all configuraitons
ansible-config view # Show the current config file
ansible-config dump # show the current settings
```

## SSH

```bash
ssh-copy-id -i id_rsa user1@serve
```

## Usefull command

```bash

ansible-playbook --check   #Check all goes well
ansible-playbook --diff         #Show diff between before and after
ansible-playbook --syntax-check #...
ansible-playbook --start-at-task "Start httpd service" #Skip to one task between before and after
ansible-playbook --tags "install" #launch tagged tasks
ansible-playbook --skip-tags "install" #launch tagged tasks

ansible-lin paybook.yaml #show warning | best practice

ansible-galaxy init roleName
ansible-galaxy search roleName #(ex: mysql)
ansible-galaxy install geerlingguy.mysql # install in default role directory `ansible-config dump | grep role`
ansible-galaxy install geerlingguy.mysql -p ./roles #install in target directory

ansible-galaxy collection install amazon.aws

ansible-inventory -i inventory/ -y --list #to see inventory content throught architecture folder
```

## Magic Variable

```yaml
msg: "{{ hostvars[web2].dns_server }}"

msg: '{{ groups['web_servers'] }} #return member of a group

msg: '{{ groups_names }}'         #return wich group the target is member of 

msg: '{{ inventory_hostname }}'   #name of the host in the inventory file     
```

## Condition

```yaml
when: ansible_facts['distribution'] == 'CentOS' 

block:
  - taskX:
  - taskY:
  - taskZ:
  always:
  rescue:
```

## Strategy

```yaml
strategy: debug #Executes tasks in interactive debug session.
strategy: linear #Executes tasks in a linear fashion

strategy: free #Executes tasks without waiting for all hosts

serial: 3 #batch strat
#Maximum 5 at a time defined by `forks =5`
```

## File separation

```yaml
- name: Deploy Web & DB Server
  hosts: web-db-server
  tasks:
   - include_tasks: tasks/db.yaml
   - include_tasks: tasks/web.yaml
```

Folder

```sh
play-books
  inventory
  group_vars
    web_server.yaml
  host_vars
    web1.yaml
    web2.yaml
  
```

## Role

```sh
ansible-galaxy init RoleName

# In my-playbook/roles 
# OR
# In /etc/ansible/roles

```

## Vault

```bash
ansible-vault encrypt inventory
```
