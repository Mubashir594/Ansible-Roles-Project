pwd
sudo apt update
sudo apt install ansible
ssh-keygen
ls
ls -a
cd .ssh
ls
cat id_ed25519.pub 
cd
ssh 16.170.204.81
ssh 13.60.95.252
mkdir ansible_project
cd ansible_project/
touch inventory.ini
touch site.yml
mkdir roles
vim inventory.ini 
cd roles/
ansible-galaxy init webserver
ls
cd webserver/
ls
cd tests/
ls
cd ..
ls
cd tasks/
ls
vim main.yml 
cd ..
ls
cd templates/
ls
vim index.html.j2
cd ..
ls
cd handlers/
ls
vim main.yml 
cd ..
ls
vim site.yml 
ansible-playbook -i inventory.ini site.yml
cd
ansible-playbook -i inventory.ini site.yml
cd ansible_project/
ansible-playbook -i inventory.ini site.yml
vim inventory.ini 
ansible-playbook -i inventory.ini site.yml
cd ansible_project/
cd roles/
ansible-galaxy init execution_checker
ls
cd execution_checker/
ls
cd defaults/
ls
vim main.yml 
cd ..
ls
cd vars/
vim main.yml 
cd ..
ls
cd files/
ls
vim banner.txt
cd ..
ls
cd templates/
ls
vim output.j2
cd ..
cd handlers/
ls
vim main.yml 
cd ..
cd meta/
ls
vim main.yml 
ls
cd ansible_project/
ls
vim inventory.ini 
cat inventory.ini 
ls
ssh 13.48.59.78
cd
ssh 13.48.59.78
cd ansible_project/
ssh 13.48.59.78
cd
ls -a
cd .ssh/
ls
cat id_ed25519.pub 
ssh 13.60.232.49
cd
cd ansible_project/
ls
cat inventory.ini 
cd roles/
ls
cd ..
vim inventory.ini 
rm -rf execution_checker
ls
cd roles
ls
rm -rf execution_checker/
rm -rf webserver/
ls
ansible-galaxy init portfolio
cd portfolio/
ls
cd files/
ls
vim style.css
vim index.html
vim projects.html
vim contact.html
vim about.html
ls
cd ..
cd defaults/
ls
vim main.yml 
cd ..
cd vars/
ls
vim main.yml 
cd ..
ls
cd tasks/
ls
vim main.yml 
cd ..
ls
cd handlers/
ls
vim main.yml 
cd ..
ls
cd meta/
ls
vim main.yml 
cd ..
ls
cd ..
ls
vim site.yml ansible-playbook -i inventory.ini site.ym
ansible-playbook -i inventory.ini site.yml
ssh 13.60.232.49
ansible-playbook -i inventory.ini site.ymlfererff
cd ansible_project/roles/portfolio/files/
ls
vim about.html 
cd ansible_project/
cd roles/
cd portfolio/
