# gb-cms
1. ansible -m template -a 'src=./1.simple_template.j2 dest=./1.txt' -e txt=simple localhost && cat 1.txt
2. ansible-playbook -i inventory/local/hosts 2.run_roles.yml --ask-vault-pass
3. ansible-playbook -i inventory/local/hosts 3.nginx.yml --ask-vault-pass -e nginx_port=91
4. ansible-playbook -i inventory/local/hosts 4.docker.yml --ask-vault-pass
5. ansible-playbook -i inventory/local/hosts 5.rabbit.yml --ask-vault-pass
