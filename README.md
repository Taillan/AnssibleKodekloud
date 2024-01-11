# AnssibleKodekloud

## Config 

Can be in :
 - EN_VAR
 - local file /web-playbooks/ansible.cfg
 - ansible conf file

## Usefull command 
 
```bash
ansible-config list # Lists all configuraitons
ansible-config view # Show the current config file
ansible-config dump # show the current settings

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
```

student-node

node01
User: bob
Password: caleston123

node02
User: bob
Password: caleston123