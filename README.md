The Ansible configuration file can be stored in different locations (files listed in
priority reduction):
- `ANSIBLE_CONFIG` (variable environment)
- `ansible.cfg` (in the current catalog)
- `~/.ansible.cfg` (in the user's home catalog)
- `/etc/ansible/ansible.cfg`

You can generate an Ansible configuration file, `ansible.cfg`, that lists all default settings as follows:
```
ansible-config init --disabled > ansible.cfg
```
Include available plugins to create a more complete Ansible configuration as follows:
```
ansible-config init --disabled -t all > ansible.cfg
```
```bash
ansible-inventory --graph
ansible-inventory --list
```
```
ansible all -m ping
ansible all -m setup
ansible all -m shell -a "uptime"
ansible all -m command -a "uptime"
ansible all -m copy -a "src=<file> dest=<path> mode=777"
ansible all -m file -a "path=<path> state=absent"
ansible all -m get url -a "url=<url-link> dest=<path>"
ansible all -m yum -a "name=<package> state=installed"
ansible all -m yum -a "name=<package> state=removed"
ansible all -m uri -a "url=<url> return content=yes"
ansible all -m service -a "name=<service name> state=started enabled=yes"
```
```
ansible-doc-l
```

Roles:
```
ansible-galaxy init <role_name>
```
Verifying Playbooks:
```
ansible-playbook <file> --check
ansible-playbook <file> --check --diff
ansible-playbook <file> --syntax-check
```
